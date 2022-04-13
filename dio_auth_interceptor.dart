import 'package:dio/dio.dart';
import 'package:dixy_staff/injections_container.dart';

class DioAuthInterceptor extends InterceptorsWrapper {
  final Dio dio;
  DioAuthInterceptor(this.dio);
  final authProvider = sl<AuthProviderBase>();

  @override
  void onError(DioError e, ErrorInterceptorHandler handler) async {
    if (e.response != null) {
      if (e.response!.statusCode == 401) {
        //catch the 401 here
        dio.interceptors.requestLock.lock();
        dio.interceptors.responseLock.lock();
        var requestOptions = e.requestOptions;

        final savedPin = await authProvider.readSavedPin();
        final savedToken = await authProvider.readSavedToken(savedPin ?? '');

        if (savedToken != null) {
          try {
            final newToken = await authProvider.refreshToken(savedToken);

            await authProvider.saveToken(newToken, savedPin ?? '');

            sl<AuthRepo>().token = newToken;

            var accessToken = newToken.accessToken ?? '';
            final opts = Options(method: requestOptions.method);
            dio.options.headers['Authorization'] = 'Bearer ' + accessToken;
            dio.options.headers['Accept'] = '*/*';
            if (requestOptions.headers['siteId'] != null) {
              dio.options.headers['siteId'] = requestOptions.headers['siteId'];
            }
            dio.interceptors.requestLock.unlock();
            dio.interceptors.responseLock.unlock();
            final response = await dio.request(requestOptions.path,
                options: opts,
                cancelToken: requestOptions.cancelToken,
                onReceiveProgress: requestOptions.onReceiveProgress,
                data: requestOptions.data,
                queryParameters: requestOptions.queryParameters);
            handler.resolve(response);
          } catch (ex) {
            if (ex is DioError) {
              handler.next(ex);
            } else {
              handler.next(e);
            }
          }
        }
      } else if (e.response!.statusCode == 403) {
        handler.reject(e);
      } else {
        handler.next(e);
      }
    }

    // super.onError(e, handler);
  }
}

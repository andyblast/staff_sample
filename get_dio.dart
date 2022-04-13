import 'package:dio/dio.dart';
import 'package:dixy_staff/network/dio_auth_interceptor.dart';

const appUserAgent = 'Dixy.Staff';

Dio getDio({
  bool allowAuthInterceptor = true,
  bool allowAnalyticInterceptor = true,
}) {
  final dio = Dio(
    BaseOptions(
      headers: {
        'User-Agent': appUserAgent,
      },
      connectTimeout: 60000,
    ),
  );

  if (allowAuthInterceptor) {
    dio.interceptors.add(DioAuthInterceptor(dio));
  }

  return dio;
}

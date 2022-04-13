import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:dixy_staff/modules/store_passport/data/models/store_ambulance/store_ambulance_model.dart';
import 'package:dixy_staff/modules/store_passport/domain/bloc/store_ambulance_bloc/store_ambulance_bloc.dart';
import 'package:dixy_staff/modules/store_passport/presentations/screens/store_ambulance_screen/widgets/index.dart';
import 'package:dixy_staff/modules/store_passport/presentations/widgets/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/decorations/show_snackbar.dart';
import 'package:dixy_staff/ui_kit/widgets/alerts/form_alert.dart';
import 'package:dixy_staff/ui_kit/widgets/pages/error_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

class StoreAmbulanceScreen extends StatelessWidget {
  const StoreAmbulanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoreAmbulanceBloc>(
      create: (context) => StoreAmbulanceBloc(
        remotaDataSource: sl(),
        postRemotaDataSource: sl(),
      ),
      child: _StoreAmbulanceScreen(),
    );
  }
}

class _StoreAmbulanceScreen extends StatefulWidget {
  _StoreAmbulanceScreen({Key? key}) : super(key: key);

  @override
  ___StoreAmbulanceScreenState createState() => ___StoreAmbulanceScreenState();
}

class ___StoreAmbulanceScreenState extends State<_StoreAmbulanceScreen> {
  StoreAmbulanceModel? _cachedModel;
  bool _isWriteAllowed = true;

  @override
  void initState() {
    super.initState();

    BlocProvider.of<StoreAmbulanceBloc>(context).add(ReadStoreAmbulanceEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Скорая помощь магазину',
          overflow: TextOverflow.fade,
        ),
      ),
      body: StorePassportOverlayWidget(
        child: BlocListener<StoreAmbulanceBloc, StoreAmbulanceState>(
          listener: (context, state) {
            if (state is PostErrorStoreAmbulancState) {
              showSnackBar(
                context,
                'Возникла ошибка при отправке данных',
                FormAlertTypes.error,
              );
            }
            if (state is UploadedStoreAmbulanceState) {
              showSnackBar(
                context,
                'Данные успешно отправлены',
                FormAlertTypes.success,
              );
            }
          },
          child: BlocBuilder<StoreAmbulanceBloc, StoreAmbulanceState>(
              builder: (context, state) {
            if (state is LoadingStoreAmbulanceState) {
              if (_cachedModel == null) {
                return StorePassportLoader(message: state.message);
              } else {
                context.loaderOverlay.show();
                return AmbulanceBodyWidget(
                  allQuestions: _cachedModel!.shopAmbulanceQuestions,
                  allGroups: _cachedModel!.shopAmbulanceQuestionGroups,
                  isWriteAllowed: _isWriteAllowed,
                );
              }
            } else if (state is ErrorStoreAmbulancState) {
              context.loaderOverlay.hide();
              return ErrorPageWidget(
                message: state.message,
                onRepeat: () => BlocProvider.of<StoreAmbulanceBloc>(context)
                    .add(ReadStoreAmbulanceEvent()),
              );
            } else if (state is LoadedStoreAmbulanceState) {
              _cachedModel = state.model;
              _isWriteAllowed = state.model.isWriteAllowed;
              context.loaderOverlay.hide();

              return AmbulanceBodyWidget(
                allQuestions: state.model.shopAmbulanceQuestions,
                allGroups: state.model.shopAmbulanceQuestionGroups,
                isWriteAllowed: _isWriteAllowed,
              );
            }
            if (state is ForbiddenStoreAmbulancState) {
              return Container(
                padding: const EdgeInsets.all(Dimens.defaultScreenPadding),
                child: FormAlertWidget(
                  message: state.message,
                  type: FormAlertTypes.tip,
                ),
              );
            } else if (state is PostErrorStoreAmbulancState) {
              context.loaderOverlay.hide();
              return AmbulanceBodyWidget(
                allQuestions: _cachedModel!.shopAmbulanceQuestions,
                allGroups: _cachedModel!.shopAmbulanceQuestionGroups,
                isWriteAllowed: _isWriteAllowed,
              );
            } else {
              return Container();
            }
          }),
        ),
      ),
    );
  }
}

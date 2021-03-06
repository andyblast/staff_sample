import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:dixy_staff/modules/store_passport/domain/bloc/index.dart';
import 'package:dixy_staff/modules/store_passport/presentations/widgets/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/dimens.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/button/simple_button.dart';
import 'package:dixy_staff/ui_kit/widgets/dialogs/modal_dialog.dart';
import 'package:dixy_staff/ui_kit/widgets/pages/error_pages.dart';
import 'package:dixy_staff/ui_kit/widgets/property_view/text_property_widget.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreInfoScreen extends StatelessWidget {
  const StoreInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoreInfoBloc>(
      create: (context) => StoreInfoBloc(baseRepository: sl()),
      child: _StoreInfoScreen(),
    );
  }
}

class _StoreInfoScreen extends StatefulWidget {
  const _StoreInfoScreen({Key? key}) : super(key: key);

  @override
  State<_StoreInfoScreen> createState() => __StoreInfoScreenState();
}

class __StoreInfoScreenState extends State<_StoreInfoScreen> {
  StoreInfoModel? _cachedModel;

  @override
  void initState() {
    super.initState();
    final _authRepo = sl<AuthRepo>();
    final _siteCode = _authRepo.defaultSiteCode;

    if (_siteCode != null) {
      BlocProvider.of<StoreInfoBloc>(context)
          .add(ReadStoreInfoEvent(_siteCode));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '???????? ?? ????????????????',
          overflow: TextOverflow.fade,
        ),
      ),
      body: StorePassportOverlayWidget(
        child: BlocBuilder<StoreInfoBloc, StoreInfoState>(
            builder: (context, state) {
          if (state is LoadingStoreInfoState) {
            if (_cachedModel == null) {
              return StorePassportLoader(message: state.message);
            } else {
              context.loaderOverlay.show();
              return _buildBody(_cachedModel!);
            }
          } else if (state is FailureStoreInfoState) {
            context.loaderOverlay.hide();
            final _authRepo = sl<AuthRepo>();
            final _siteCode = _authRepo.defaultSiteCode;

            return ErrorPageWidget(
              message: state.message,
              onRepeat: _siteCode == null
                  ? null
                  : () => BlocProvider.of<StoreInfoBloc>(context).add(
                        ReadStoreInfoEvent(_siteCode),
                      ),
            );
          } else if (state is LoadedStoreInfoState) {
            _cachedModel = state.storeInfo;
            context.loaderOverlay.hide();
            return _buildBody(state.storeInfo);
          } else {
            return Container();
          }
        }),
      ),
    );
  }

  Widget _buildBody(StoreInfoModel storeInfo) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Dimens.defaultScreenPadding),
        child: Column(
          children: [
            _buildInfoSection(storeInfo),
            HBox(Insets.x2),
            if (storeInfo.attachedEmployees != null)
              _buildContactsSection(storeInfo.attachedEmployees!),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(StoreInfoModel storeInfo) {
    return AccountSection(
      title: storeInfo.siteTypeName ?? '??????????????',
      children: [
        HBox(Insets.x1),
        TextPropertyWidget(
          '??????:',
          '${storeInfo.siteCode}',
        ),
        if (storeInfo.siteName != null)
          TextPropertyWidget(
            '????????????????:',
            '${storeInfo.siteName}',
          ),
        if (storeInfo.macroregion != null)
          TextPropertyWidget(
            '????????????????:',
            '${storeInfo.macroregion}',
          ),
        if (storeInfo.sitePhone != null)
          InkWell(
            onTap: () async {
              await launchContact('tel:' + storeInfo.sitePhone!);
            },
            child: TextPropertyWidget(
              '??????????????:',
              '${storeInfo.sitePhone}',
            ),
          ),
        if (storeInfo.address != null)
          InkWell(
            onTap: () async {
              await MapsLauncher.launchQuery(storeInfo.address!);
            },
            child: TextPropertyWidget(
              '??????????:',
              '${storeInfo.address}',
              twoLines: true,
            ),
          ),
        if (storeInfo.openTime != null && storeInfo.closeTime != null)
          TextPropertyWidget(
            '?????????? ????????????:',
            '${storeInfo.openTime} - ${storeInfo.closeTime}',
          ),
        if (storeInfo.numberOfTills != null)
          TextPropertyWidget(
            '???????????????????? ????????:',
            '${storeInfo.numberOfTills}',
          ),
        TextPropertyWidget(
          '?????????????? ?????????????????????????? ???? ??????????:',
          (storeInfo.tillHasBelt == true) ? '????' : '??????',
        ),
        TextPropertyWidget(
          'Shop-in-shop ????????????????:',
          (storeInfo.bristol == true) ? '????' : '??????',
        ),
        TextPropertyWidget(
          '?????????????????? ????????????????????:',
          (storeInfo.bristol == true) ? '????' : '??????',
        ),
        if (storeInfo.alcoholLicenseExpiration != null)
          TextPropertyWidget(
            '?????????????????????? ???????????????? ????:',
            '${storeInfo.alcoholLicenseExpiration}',
          ),
        if (storeInfo.legalEntity != null)
          TextPropertyWidget(
            '????. ????????:',
            '${storeInfo.legalEntity!['name']}',
          ),
        if (storeInfo.dateOpen != null)
          TextPropertyWidget(
            '???????? ????????????????:',
            '${storeInfo.dateOpen}',
          ),
        if (storeInfo.siteStatus != null)
          TextPropertyWidget(
            '????????????:',
            '${storeInfo.siteStatus!['name']}',
          ),
        if (storeInfo.reconstructionOpenDate != null &&
            storeInfo.reconstructionExpirationDate != null)
          TextPropertyWidget(
            '???????????? ??????????????????????????:',
            '${storeInfo.reconstructionOpenDate} - ${storeInfo.reconstructionExpirationDate}',
            twoLines: true,
          ),
        if (storeInfo.reconstructionStatus != null)
          TextPropertyWidget(
            '???????????? ??????????????????????????:',
            '${storeInfo.reconstructionStatus!['name']}',
          ),
        if (storeInfo.dateFullClose != null)
          TextPropertyWidget(
            '???????? ????????????????:',
            '${storeInfo.dateFullClose}',
          ),
        if (storeInfo.closingManager != null)
          TextPropertyWidget(
            '???????????????? ?????????????? ??????????:',
            '${storeInfo.closingManager!.employeeFullName}',
          ),
        if (storeInfo.comment != null)
          if (storeInfo.comment!.isNotEmpty)
            TextPropertyWidget(
              '??????????????????????:',
              '${storeInfo.comment}',
            ),
        if (storeInfo.shopTotalPlanArea != null)
          TextPropertyWidget(
            '?????????? ?????????????? ???? ??????????:',
            '${storeInfo.shopTotalPlanArea}',
          ),
        if (storeInfo.shopTotalArea != null)
          TextPropertyWidget(
            '?????????? ?????????????? ??????????????????????:',
            '${storeInfo.shopTotalArea}',
          ),
        if (storeInfo.shopFloorArea != null)
          TextPropertyWidget(
            '???????????????? ??????????????:',
            '${storeInfo.shopFloorArea}',
          ),
        if (storeInfo.shopStoreRoomArea != null)
          TextPropertyWidget(
            '?????????????? ?????????????????? ??????????????????:',
            '${storeInfo.shopStoreRoomArea}',
          ),
        if (storeInfo.shopAreaSubrented != null)
          TextPropertyWidget(
            '?????????????? ??????????????????:',
            '${storeInfo.shopAreaSubrented}',
          ),
        if (storeInfo.buildingType != null)
          TextPropertyWidget(
            '?????? ????????????:',
            '${storeInfo.buildingType!['name']}',
          ),
        if (storeInfo.floorCounter != null)
          TextPropertyWidget(
            '??????????????????:',
            '${storeInfo.floorCounter!['name']}',
          ),
        if (storeInfo.tradeAreaStatus != null)
          TextPropertyWidget(
            '???????????? ???????????? ?????????????? ???? ?? ?????????????????? ??????????????????:',
            '${storeInfo.tradeAreaStatus!['name']}',
            twoLines: true,
          ),
        if (storeInfo.lawType != null)
          TextPropertyWidget(
            '?????? ??????????:',
            '${storeInfo.lawType!['name']}',
          ),
        if (storeInfo.latitude != null)
          TextPropertyWidget(
            '????????????:',
            '${storeInfo.latitude}',
          ),
        if (storeInfo.longitude != null)
          TextPropertyWidget(
            '??????????????:',
            '${storeInfo.longitude}',
          ),
      ],
    );
  }

  Widget _buildContactsSection(List<StoreInfoEmployeeModel> employees) {
    return AccountSection(
      title: '????????????????',
      padding: EdgeInsets.zero,
      titlePadding:
          EdgeInsets.all(Dimens.defaultScreenPadding).copyWith(bottom: 0),
      children: [
        _buildContacts(employees),
      ],
    );
  }

  Widget _buildContacts(List<StoreInfoEmployeeModel> employees) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: employees.length,
      itemBuilder: (context, index) {
        final employee = employees.elementAt(index);
        return ListTile(
          contentPadding: EdgeInsets.only(
              left: Insets.x6, right: Insets.x6, top: Insets.x2),
          title: Text(employee.employeeFullName ?? '?????? ??????????'),
          subtitle: Text(employee.positionGroupName ?? '?????? ??????????????'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            showModalSheet(
                context,
                ModalDialogWidget.custom(
                    child: Container(
                  padding: EdgeInsets.all(Dimens.defaultModalCardRadius),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H5(employee.employeeFullName ?? '?????? ??????????'),
                      HBox(Insets.x2),
                      TextPropertyWidget('??????????????????',
                          employee.positionGroupName ?? '???? ??????????????'),
                      TextPropertyWidget(
                          '??????????????', employee.employeePhone ?? '???? ????????????'),
                      TextPropertyWidget(
                          'E-mail', employee.employeeEmail ?? '???? ????????????'),
                      HBox(Insets.x8),
                      SimpleButton(
                        onPressed: employee.employeeEmail != null &&
                                employee.employeeEmail!.isNotEmpty
                            ? () async {
                                await launchContact(
                                    'mailto:' + employee.employeeEmail!);
                              }
                            : null,
                        buttonType: ButtonTypes.primary,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.mail),
                            VBox(Insets.x2),
                            Text('?????????????????? ??????????????????'),
                          ],
                        ),
                      ),
                      HBox(Insets.x4),
                      SimpleButton(
                        onPressed: employee.employeePhone != null &&
                                employee.employeePhone!.isNotEmpty
                            ? () async {
                                var phone = employee.employeePhone!
                                    .replaceAll(' ', '')
                                    .replaceAll('-', '')
                                    .replaceAll('(', '')
                                    .replaceAll(')', '');

                                await launchContact('tel:' + phone);
                              }
                            : null,
                        buttonType: ButtonTypes.accent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone),
                            VBox(Insets.x2),
                            Text('??????????????????'),
                          ],
                        ),
                      ),
                      HBox(Insets.x4),
                    ],
                  ),
                )));
          },
        );
      },
      separatorBuilder: (context, index) => Divider(),
    );
  }

  Future<void> launchContact(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

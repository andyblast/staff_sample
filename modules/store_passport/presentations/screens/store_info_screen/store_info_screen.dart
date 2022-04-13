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
          'Инфо и контакты',
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
      title: storeInfo.siteTypeName ?? 'Магазин',
      children: [
        HBox(Insets.x1),
        TextPropertyWidget(
          'Код:',
          '${storeInfo.siteCode}',
        ),
        if (storeInfo.siteName != null)
          TextPropertyWidget(
            'Название:',
            '${storeInfo.siteName}',
          ),
        if (storeInfo.macroregion != null)
          TextPropertyWidget(
            'Дивизион:',
            '${storeInfo.macroregion}',
          ),
        if (storeInfo.sitePhone != null)
          InkWell(
            onTap: () async {
              await launchContact('tel:' + storeInfo.sitePhone!);
            },
            child: TextPropertyWidget(
              'Телефон:',
              '${storeInfo.sitePhone}',
            ),
          ),
        if (storeInfo.address != null)
          InkWell(
            onTap: () async {
              await MapsLauncher.launchQuery(storeInfo.address!);
            },
            child: TextPropertyWidget(
              'Адрес:',
              '${storeInfo.address}',
              twoLines: true,
            ),
          ),
        if (storeInfo.openTime != null && storeInfo.closeTime != null)
          TextPropertyWidget(
            'Время работы:',
            '${storeInfo.openTime} - ${storeInfo.closeTime}',
          ),
        if (storeInfo.numberOfTills != null)
          TextPropertyWidget(
            'Количество касс:',
            '${storeInfo.numberOfTills}',
          ),
        TextPropertyWidget(
          'Наличие лентопротяжки на кассе:',
          (storeInfo.tillHasBelt == true) ? 'да' : 'нет',
        ),
        TextPropertyWidget(
          'Shop-in-shop Бристоль:',
          (storeInfo.bristol == true) ? 'да' : 'нет',
        ),
        TextPropertyWidget(
          'Мобильный мониторинг:',
          (storeInfo.bristol == true) ? 'да' : 'нет',
        ),
        if (storeInfo.alcoholLicenseExpiration != null)
          TextPropertyWidget(
            'Алкогольная лицензия до:',
            '${storeInfo.alcoholLicenseExpiration}',
          ),
        if (storeInfo.legalEntity != null)
          TextPropertyWidget(
            'Юр. лицо:',
            '${storeInfo.legalEntity!['name']}',
          ),
        if (storeInfo.dateOpen != null)
          TextPropertyWidget(
            'Дата открытия:',
            '${storeInfo.dateOpen}',
          ),
        if (storeInfo.siteStatus != null)
          TextPropertyWidget(
            'Статус:',
            '${storeInfo.siteStatus!['name']}',
          ),
        if (storeInfo.reconstructionOpenDate != null &&
            storeInfo.reconstructionExpirationDate != null)
          TextPropertyWidget(
            'Период реконструкции:',
            '${storeInfo.reconstructionOpenDate} - ${storeInfo.reconstructionExpirationDate}',
            twoLines: true,
          ),
        if (storeInfo.reconstructionStatus != null)
          TextPropertyWidget(
            'Статус реконструкции:',
            '${storeInfo.reconstructionStatus!['name']}',
          ),
        if (storeInfo.dateFullClose != null)
          TextPropertyWidget(
            'Дата закрытия:',
            '${storeInfo.dateFullClose}',
          ),
        if (storeInfo.closingManager != null)
          TextPropertyWidget(
            'Менеджер проекта ДКСиН:',
            '${storeInfo.closingManager!.employeeFullName}',
          ),
        if (storeInfo.comment != null)
          if (storeInfo.comment!.isNotEmpty)
            TextPropertyWidget(
              'Комментарий:',
              '${storeInfo.comment}',
            ),
        if (storeInfo.shopTotalPlanArea != null)
          TextPropertyWidget(
            'Общая площадь по плану:',
            '${storeInfo.shopTotalPlanArea}',
          ),
        if (storeInfo.shopTotalArea != null)
          TextPropertyWidget(
            'Общая площадь фактическая:',
            '${storeInfo.shopTotalArea}',
          ),
        if (storeInfo.shopFloorArea != null)
          TextPropertyWidget(
            'Торговая площадь:',
            '${storeInfo.shopFloorArea}',
          ),
        if (storeInfo.shopStoreRoomArea != null)
          TextPropertyWidget(
            'Площадь подсобных помещений:',
            '${storeInfo.shopStoreRoomArea}',
          ),
        if (storeInfo.shopAreaSubrented != null)
          TextPropertyWidget(
            'Площадь субаренды:',
            '${storeInfo.shopAreaSubrented}',
          ),
        if (storeInfo.buildingType != null)
          TextPropertyWidget(
            'Тип здания:',
            '${storeInfo.buildingType!['name']}',
          ),
        if (storeInfo.floorCounter != null)
          TextPropertyWidget(
            'Этажность:',
            '${storeInfo.floorCounter!['name']}',
          ),
        if (storeInfo.tradeAreaStatus != null)
          TextPropertyWidget(
            'Статус разных уровней ТЗ и складских помещений:',
            '${storeInfo.tradeAreaStatus!['name']}',
            twoLines: true,
          ),
        if (storeInfo.lawType != null)
          TextPropertyWidget(
            'Тип права:',
            '${storeInfo.lawType!['name']}',
          ),
        if (storeInfo.latitude != null)
          TextPropertyWidget(
            'Широта:',
            '${storeInfo.latitude}',
          ),
        if (storeInfo.longitude != null)
          TextPropertyWidget(
            'Долгота:',
            '${storeInfo.longitude}',
          ),
      ],
    );
  }

  Widget _buildContactsSection(List<StoreInfoEmployeeModel> employees) {
    return AccountSection(
      title: 'Контакты',
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
          title: Text(employee.employeeFullName ?? 'Нет имени'),
          subtitle: Text(employee.positionGroupName ?? 'Нет позиции'),
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
                      H5(employee.employeeFullName ?? 'Нет имени'),
                      HBox(Insets.x2),
                      TextPropertyWidget('Должность',
                          employee.positionGroupName ?? 'не указана'),
                      TextPropertyWidget(
                          'Телефон', employee.employeePhone ?? 'не указан'),
                      TextPropertyWidget(
                          'E-mail', employee.employeeEmail ?? 'не указан'),
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
                            Text('Отправить сообщение'),
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
                            Text('Позвонить'),
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

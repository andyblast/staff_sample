import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/presentations/screens/store_ambulance_screen/store_ambulance_screen.dart';
import 'package:dixy_staff/modules/store_passport/presentations/screens/store_info_screen/store_info_screen.dart';
import 'package:dixy_staff/modules/store_passport/presentations/screens/store_salary_screen/store_salary_screen.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/themes.dart';
import 'package:dixy_staff/ui_kit/widgets/alerts/form_alert.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/button/index.dart';
import 'package:dixy_staff/ui_kit/widgets/maps/static_map_image.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Section {
  Info,
  Ambulance,
  Selection,
  Planogramms,
  Salary,
  Photos,
}

class StorePassportScreen extends StatefulWidget {
  const StorePassportScreen({Key? key}) : super(key: key);

  @override
  _StorePassportScreenState createState() => _StorePassportScreenState();
}

class _StorePassportScreenState extends State<StorePassportScreen> {
  final _defaultSite = sl<AuthRepo>().defaultSite;

  var _siteLat;
  var _siteLong;

  @override
  void initState() {
    super.initState();
    if (_defaultSite != null && _defaultSite!.latLng != null) {
      _siteLat = _defaultSite!.latLng!.latitude;
      _siteLong = _defaultSite!.latLng!.longitude;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Паспорт магазина',
          overflow: TextOverflow.fade,
        ),
        elevation: 0,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (_defaultSite == null) {
      return FormAlertWidget(
        message: 'Отсутствует магазин по умолчанию',
        type: FormAlertTypes.error,
      );
    }

    return Container(
      color: getOnePageColor(context),
      padding: EdgeInsets.only(
        bottom: Dimens.defaultScreenPadding,
        right: Dimens.defaultScreenPadding,
        left: Dimens.defaultScreenPadding,
      ),
      child: ListView(
        children: [
          if (_siteLat != null && _siteLong != null)
            Padding(
              padding: const EdgeInsets.only(
                top: Dimens.defaultScreenPadding,
                bottom: Insets.x4,
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(Dimens.defaultModalCardRadius),
                child: StaticMapImage(
                  lat: _siteLat,
                  long: _siteLong,
                ),
              ),
            ),
          H5('Магазин Дикси (${_defaultSite!.siteCode})'),
          HBox(Insets.x2),
          if (_defaultSite!.address != null)
            Description('${_defaultSite!.address}'),
          HBox(Insets.x6),
          FormButton(
            icon: _buildIcon(context, FontAwesomeIcons.info),
            title: Text('Инфо и контакты'),
            isSelect: true,
            onPressed: () => _onItemPressed(
              context,
              StoreInfoScreen(),
            ),
          ),
          HBox(Insets.x3),
          FormButton(
            icon: _buildIcon(context, FontAwesomeIcons.rubleSign),
            title: Text('Выплаты'),
            isSelect: true,
            onPressed: () => _onItemPressed(
              context,
              StoreSalaryScreen(),
            ),
          ),
          HBox(Insets.x3),
          FormButton(
            icon: _buildIcon(context, FontAwesomeIcons.userPlus),
            title: Text('Подбор персонала'),
            isSelect: true,
            onPressed: () => _onItemPressed(
              context,
              StoreSelectionScreen(),
            ),
          ),
          HBox(Insets.x3),
          FormButton(
            icon: _buildIcon(context, FontAwesomeIcons.image),
            title: Text('Фотографии объекта'),
            isSelect: true,
            onPressed: () => _onItemPressed(
              context,
              StorePhotosScreen(),
            ),
          ),
          HBox(Insets.x3),
          FormButton(
            icon: _buildIcon(context, FontAwesomeIcons.file),
            title: Text('Планограммы'),
            isSelect: true,
            onPressed: () => _onItemPressed(
              context,
              StorePlanogrammsScreen(),
            ),
          ),
          HBox(Insets.x3),
          FormButton(
            icon: _buildIcon(context, FontAwesomeIcons.question),
            title: Text('SOS!'),
            isSelect: true,
            onPressed: () => _onItemPressed(
              context,
              StoreAmbulanceScreen(),
            ),
          ),
          HBox(MediaQuery.of(context).padding.bottom)
        ],
      ),
    );
  }

  void _onItemPressed(BuildContext context, Widget nextScreen) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => nextScreen,
      ),
    );
  }

  SizedBox _buildIcon(BuildContext context, IconData icon) {
    return SizedBox(
      width: 32,
      height: 32,
      child: Center(
        child: FaIcon(
          icon,
          color: Theme.of(context).primaryColor,
          size: 22,
        ),
      ),
    );
  }
}

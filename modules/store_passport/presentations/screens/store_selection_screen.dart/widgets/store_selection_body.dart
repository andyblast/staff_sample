import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:dixy_staff/modules/store_passport/domain/bloc/index.dart';
import 'package:dixy_staff/modules/store_passport/presentations/screens/store_selection_screen.dart/widgets/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/decorations/formatters/date.dart';
import 'package:dixy_staff/ui_kit/widgets/alerts/form_alert.dart';
import 'package:dixy_staff/ui_kit/widgets/badges/count_badge.dart';
import 'package:dixy_staff/ui_kit/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/dialogs/modal_dialog.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreSelectionBody extends StatefulWidget {
  final StoreSelectionViewModel viewModel;
  final String selectedPosition;

  StoreSelectionBody(
      {Key? key, required this.viewModel, required this.selectedPosition})
      : super(key: key);

  @override
  _StoreSelectionBodyState createState() => _StoreSelectionBodyState();
}

class _StoreSelectionBodyState extends State<StoreSelectionBody> {
  StoreSelectionPositionModel? _position;
  var _selectionRequests = <StoreSelectionRequestModel>[];
  var _mobileRequests = <StoreSelectionMobileRequestModel>[];

  void _getPositionRequests() {
    _position = widget.viewModel.positions!
        .firstWhere((position) => position.name == widget.selectedPosition);

    if (_position != null) {
      var _tempSelectionRequests = <StoreSelectionRequestModel>[];
      if (_position!.selectionRequests != null) {
        if (_position!.selectionRequests!.isNotEmpty) {
          _position!.selectionRequests!
              .forEach((element) => _tempSelectionRequests.add(element));
        }
      }

      var _tempMobileRequests = <StoreSelectionMobileRequestModel>[];
      if (_position!.mobileRequests != null) {
        if (_position!.mobileRequests!.isNotEmpty) {
          _position!.mobileRequests!
              .forEach((element) => _tempMobileRequests.add(element));
        }
      }

      setState(() {
        _selectionRequests = _tempSelectionRequests;
        _mobileRequests = _tempMobileRequests;
      });
    }
  }

  void _openRequestInfo({
    StoreSelectionMobileRequestModel? mobileRequest,
    StoreSelectionRequestModel? selectionRequest,
  }) async {
    final _isMobile = (mobileRequest != null) ? true : false;
    final sheetResult = await showModalSheet(
      context,
      ModalDialogWidget.custom(
        child: StoreSelectionRequestInfoWidget(
          isMobile: _isMobile,
          mobileRequest: _isMobile ? mobileRequest : null,
          selectionRequest: _isMobile ? null : selectionRequest,
          selectedPosition: widget.selectedPosition,
          onUpdate: () async {
            await Future.delayed(
              Duration(milliseconds: 300),
            );
            Navigator.pop(context, true);
          },
        ),
      ),
    );

    if (sheetResult != null && sheetResult) {
      BlocProvider.of<StoreSelectionBloc>(context)
          .add(ReadStoreSelectionViewEvent());
    }
  }

  @override
  void initState() {
    super.initState();
    _getPositionRequests();
  }

  @override
  void didUpdateWidget(covariant StoreSelectionBody oldWidget) {
    _getPositionRequests();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (_position == null) {
      return FormAlertWidget(
        message: 'Нет информации по выбранному сотруднику',
        type: FormAlertTypes.warning,
      );
    }

    return ListTileTheme(
      contentPadding: EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildBodyItem(
            title: 'Штатное расписание',
            value: (_position!.shr != null)
                ? _position!.shr.toString()
                : 'нет данных',
          ),
          Divider(height: 2),
          _buildBodyItem(
            title: 'Штатное замещение',
            value: (_position!.shz != null)
                ? _position!.shz.toString()
                : 'нет данных',
          ),
          Divider(height: 2),
          _selectionRequests.isNotEmpty
              ? _buildBodyExpandedItem(
                  title: 'Заявки на подбор',
                  selectionRequestList: _selectionRequests,
                )
              : _buildBodyItem(
                  title: 'Заявки на подбор',
                  value: '0',
                ),
          Divider(height: 2),
          _mobileRequests.isNotEmpty
              ? _buildBodyExpandedItem(
                  title: 'Заявки на мобильных сотрудников',
                  mobileRequests: _mobileRequests,
                )
              : _buildBodyItem(
                  title: 'Заявки на мобильных сотрудников',
                  value: '0',
                ),
          Divider(height: 2),
        ],
      ),
    );
  }

  Widget _buildBodyItem({
    required String title,
    required String value,
  }) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ListTileTheme(
        contentPadding: EdgeInsets.all(0),
        child: ListTile(
          title: FieldLabel(title),
          trailing: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBodyExpandedItem({
    required String title,
    String? value,
    List<StoreSelectionRequestModel>? selectionRequestList,
    List<StoreSelectionMobileRequestModel>? mobileRequests,
  }) {
    final selectionList =
        (selectionRequestList != null) ? selectionRequestList : null;
    final mobileList = (mobileRequests != null) ? mobileRequests : null;

    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ListTileTheme(
        contentPadding: EdgeInsets.all(0),
        dense: true,
        child: ExpansionTile(
          key: GlobalKey(),
          title: Row(
            children: [
              Flexible(
                child: FieldLabel(title),
              ),
              VBox(Insets.x2),
              (selectionList != null && selectionList.isNotEmpty)
                  ? CountBadgeWidget(
                      selectionList
                          .where((element) => element.closeDt == null)
                          .toList()
                          .length,
                    )
                  : (mobileList != null && mobileList.isNotEmpty)
                      ? CountBadgeWidget(
                          mobileList
                              .where((element) => element.closeDt == null)
                              .toList()
                              .length,
                        )
                      : Container(),
            ],
          ),
          trailing: (value != null)
              ? Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              : null,
          children: (selectionList != null && selectionList.isNotEmpty)
              ? _buildSelectionRequestList(selectionList)
              : (mobileList != null && mobileList.isNotEmpty)
                  ? _buildMobileRequestList(mobileList)
                  : [],
        ),
      ),
    );
  }

  List<Widget> _buildSelectionRequestList(
      List<StoreSelectionRequestModel> requests) {
    var itemsWidgets = <Widget>[];

    if (requests.isNotEmpty) {
      requests.forEach((element) {
        var _date = '';
        if (element.createDt != null) {
          _date = ddDotMM(DateTime.parse(element.createDt!));
        }

        itemsWidgets.add(
          Container(
            margin: EdgeInsets.symmetric(vertical: Insets.x1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: Insets.x4),
              title: FieldLabel(
                'Заявка от $_date',
                color: (element.closeDt != null)
                    ? Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.3)
                    : null,
              ),
              subtitle: (element.closeDt != null)
                  ? Description(
                      'Отменена',
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.3),
                    )
                  : Description((element.type == 'Vacancy')
                      ? 'Подбор на вакансию'
                      : 'Подбор на замену'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => _openRequestInfo(selectionRequest: element),
            ),
          ),
        );
      });
    }
    return itemsWidgets;
  }

  List<Widget> _buildMobileRequestList(
      List<StoreSelectionMobileRequestModel> requests) {
    var itemsWidgets = <Widget>[];

    if (requests.isNotEmpty) {
      requests.forEach((element) {
        itemsWidgets.add(
          Container(
            margin: EdgeInsets.symmetric(vertical: Insets.x1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: Insets.x4),
              title: FieldLabel(
                'Заявка на ${element.mobileWorkStartDate} - ${element.mobileWorkEndDate}',
                color: (element.closeDt != null)
                    ? Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.3)
                    : null,
              ),
              subtitle: (element.closeDt != null)
                  ? Description(
                      'Отменена',
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.3),
                    )
                  : Description(
                      'Исполнитель найден на ${element.foundPercent}%'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => _openRequestInfo(mobileRequest: element),
            ),
          ),
        );
      });
    }
    return itemsWidgets;
  }
}

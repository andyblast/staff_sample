import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:dixy_staff/modules/store_passport/domain/bloc/index.dart';
import 'package:dixy_staff/modules/store_passport/presentations/widgets/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/insets.dart';
import 'package:dixy_staff/ui_kit/themes.dart';
import 'package:dixy_staff/ui_kit/widgets/alerts/form_alert.dart';
import 'package:dixy_staff/ui_kit/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/button/simple_button.dart';
import 'package:dixy_staff/ui_kit/widgets/dialogs/modal_dialog.dart';
import 'package:dixy_staff/ui_kit/widgets/pages/error_pages.dart';
import 'package:dixy_staff/ui_kit/widgets/property_view/text_property_widget.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreSelectionDetailWidget extends StatelessWidget {
  final String requestId;
  final bool isRequestCanceled;

  const StoreSelectionDetailWidget({
    Key? key,
    required this.requestId,
    required this.isRequestCanceled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoreSelectionDetailBloc>(
      create: (context) => StoreSelectionDetailBloc(remoteDataSource: sl()),
      child: _StoreSelectionDetailWidget(
        requestId: requestId,
        isRequestCanceled: isRequestCanceled,
      ),
    );
  }
}

class _StoreSelectionDetailWidget extends StatefulWidget {
  final String requestId;
  final bool isRequestCanceled;

  const _StoreSelectionDetailWidget({
    Key? key,
    required this.requestId,
    required this.isRequestCanceled,
  }) : super(key: key);

  @override
  State<_StoreSelectionDetailWidget> createState() =>
      _StoreSelectionDetailWidgetState();
}

class _StoreSelectionDetailWidgetState
    extends State<_StoreSelectionDetailWidget> {
  void _handeDeleteDetail(int detailId) async {
    await showModalSheet(
      context,
      ModalDialogWidget.question(
        title: 'Отмена подзаявки на подбор мобильного сотрудника',
        description: 'Вы уверены, что хотите отменить подзаявку?',
        firstButtonName: 'Да',
        secondButtonName: 'Нет',
        onAcceptTap: () {
          Navigator.pop(context);

          BlocProvider.of<StoreSelectionDetailBloc>(context).add(
            DeleteStoreSelectionDetailEvent(
              widget.requestId,
              detailId.toString(),
            ),
          );
        },
        onDeclineTap: () => Navigator.pop(context),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<StoreSelectionDetailBloc>(context)
        .add(ReadStoreSelectionDetailEvent(widget.requestId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreSelectionDetailBloc, StoreSelectionDetailState>(
        builder: (context, state) {
      if (state is LoadingStoreSelectionDetailState) {
        return StorePassportLoader(
          message: state.message,
          header: 'Подзаявки на мобильного сотрудника',
        );
      } else if (state is LoadedStoreSelectionDetailState) {
        return _buildForm(state.result);
      } else if (state is FailureStoreSelectionDetailState) {
        return ErrorPageWidget(
          message: state.message,
          onRepeat: () => BlocProvider.of<StoreSelectionDetailBloc>(context)
              .add(ReadStoreSelectionDetailEvent(widget.requestId)),
        );
      } else if (state is DeletingStoreSelectionDetailState) {
        return StorePassportLoader(
          message: state.message,
          header: 'Подзаявки на мобильного сотрудника',
        );
      } else {
        return Container();
      }
    });
  }

  Widget _buildForm(List<StoreSelectionRequestDetailModel> detailsList) {
    if (detailsList.isEmpty) {
      return FormAlertWidget(
        message: 'Нет информации по подзаявкам',
        type: FormAlertTypes.warning,
      );
    }
    return Container(
      padding: EdgeInsets.all(Dimens.defaultModalCardRadius).copyWith(
        bottom: Dimens.defaultModalCardRadius + Dimens.defaultScreenPadding,
      ),
      color: getOnePageColor(context),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          H5('Подзаявки на мобильного сотрудника'),
          HBox(Insets.x4),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: detailsList.length,
            itemBuilder: (context, index) {
              final detail = detailsList.elementAt(index);

              return (detail.executorEmployeeName != null)
                  ? Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ListTileTheme(
                        contentPadding: EdgeInsets.all(0),
                        dense: true,
                        child: ExpansionTile(
                          title: FieldLabel(
                            detail.executorEmployeeName ?? '',
                            color: (detail.closeDt != null)
                                ? Theme.of(context)
                                    .colorScheme
                                    .onBackground
                                    .withOpacity(0.3)
                                : null,
                          ),
                          subtitle: (detail.startDt != null &&
                                  detail.finishDt != null)
                              ? Description(
                                  '${detail.startDt} - ${detail.finishDt}')
                              : null,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: Insets.x2,
                              ),
                              child: Column(
                                children: [
                                  if (detail.executorEmployeeName != null)
                                    TextPropertyWidget(
                                      'ФИО исполнителя',
                                      detail.executorEmployeeName!,
                                    ),
                                  if (detail.executorEmployeeTabNumber != null)
                                    TextPropertyWidget(
                                      'Табельный номер исполнителя',
                                      detail.executorEmployeeTabNumber!,
                                    ),
                                  if (detail.startDt != null)
                                    TextPropertyWidget(
                                      'Начало смены',
                                      detail.startDt!,
                                    ),
                                  if (detail.finishDt != null)
                                    TextPropertyWidget(
                                      'Окончание смены',
                                      detail.finishDt!,
                                    ),
                                  if (detail.closeDt != null)
                                    TextPropertyWidget(
                                      'Дата отмены подзаявки',
                                      detail.closeDt!,
                                    ),
                                  if (detail.cancelEmployeeName != null)
                                    TextPropertyWidget(
                                      'ФИО отменившего подзаявку',
                                      detail.cancelEmployeeName!,
                                    ),
                                  HBox(Insets.x2),
                                  if (detail.closeDt == null &&
                                      !widget.isRequestCanceled)
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: Insets.x2,
                                      ),
                                      child: SimpleButton(
                                        onPressed: () =>
                                            _handeDeleteDetail(detail.id),
                                        buttonType: ButtonTypes.cancel,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.clear),
                                            VBox(Insets.x2),
                                            Text('Отменить подзаявку'),
                                          ],
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container();
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 1,
              );
            },
          ),
          HBox(MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}

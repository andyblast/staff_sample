import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:dixy_staff/modules/store_passport/domain/bloc/index.dart';
import 'package:dixy_staff/modules/store_passport/presentations/widgets/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/decorations/formatters/date.dart';
import 'package:dixy_staff/ui_kit/widgets/alerts/form_alert.dart';
import 'package:dixy_staff/ui_kit/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/button/simple_button.dart';
import 'package:dixy_staff/ui_kit/widgets/dialogs/modal_dialog.dart';
import 'package:dixy_staff/ui_kit/widgets/property_view/text_property_widget.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'store_selection_detail_widget.dart';

class StoreSelectionRequestInfoWidget extends StatelessWidget {
  final bool isMobile;
  final StoreSelectionMobileRequestModel? mobileRequest;
  final StoreSelectionRequestModel? selectionRequest;
  final String selectedPosition;
  final Function onUpdate;

  const StoreSelectionRequestInfoWidget({
    Key? key,
    required this.isMobile,
    this.mobileRequest,
    this.selectionRequest,
    required this.selectedPosition,
    required this.onUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoreSelectionRequestBloc>(
      create: (context) => StoreSelectionRequestBloc(remoteDataSource: sl()),
      child: _StoreSelectionRequestInfoWidget(
        isMobile: isMobile,
        mobileRequest: mobileRequest,
        selectionRequest: selectionRequest,
        selectedPosition: selectedPosition,
        onUpdate: onUpdate,
      ),
    );
  }
}

class _StoreSelectionRequestInfoWidget extends StatefulWidget {
  final bool isMobile;
  final StoreSelectionMobileRequestModel? mobileRequest;
  final StoreSelectionRequestModel? selectionRequest;
  final String selectedPosition;
  final Function onUpdate;

  const _StoreSelectionRequestInfoWidget({
    Key? key,
    required this.isMobile,
    this.mobileRequest,
    this.selectionRequest,
    required this.selectedPosition,
    required this.onUpdate,
  }) : super(key: key);

  @override
  State<_StoreSelectionRequestInfoWidget> createState() =>
      __StoreSelectionRequestInfoWidgetState();
}

class __StoreSelectionRequestInfoWidgetState
    extends State<_StoreSelectionRequestInfoWidget> {
  void _handleDeleteRequest({required String type, required String id}) async {
    final _title = type == 'Vacancy'
        ? 'Отмена заявки на подбор (вакансия)'
        : type == 'Mobile'
            ? 'Отмена заявки на подбор мобильного сотрудника'
            : 'Отмена заявки на подбор (замена)';

    await showModalSheet(
      context,
      ModalDialogWidget.question(
        title: _title,
        description:
            'Вы уверены, что хотите отменить заявку на подбор сотрудника "${widget.selectedPosition}"?',
        firstButtonName: 'Да',
        secondButtonName: 'Нет',
        onAcceptTap: () {
          Navigator.pop(context);

          BlocProvider.of<StoreSelectionRequestBloc>(context)
              .add(DeleteRequestStoreSelectionRequestEvent(id));
        },
        onDeclineTap: () => Navigator.pop(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreSelectionRequestBloc, StoreSelectionRequestState>(
        builder: (context, state) {
      if (state is InitialStoreSelectionRequestState) {
        return _buildForm();
      } else if (state is DeletingRequestStoreSelectionRequestState) {
        return StorePassportModalLoader(message: state.message);
      } else if (state is DeletedRequestStoreSelectionRequestState) {
        widget.onUpdate();
        return StorePassportModalLoader(
          message: 'Заявка успешно отменена!',
          isLoaded: true,
        );
      } else if (state is FailureStoreSelectionRequestState) {
        return _buildForm(exception: Exception(state.message));
      } else {
        return Container();
      }
    });
  }

  Container _buildForm({Exception? exception}) {
    return Container(
      padding: EdgeInsets.all(Dimens.defaultModalCardRadius),
      child: widget.isMobile
          ? _buildMobileForm(exception)
          : _buildRequestForm(exception),
    );
  }

  Widget _buildRequestForm(Exception? exception) {
    var _replacementStartDate;
    if (widget.selectionRequest!.separationDate != null) {
      final tempDate = DateTime.parse(widget.selectionRequest!.separationDate!);
      _replacementStartDate = tempDate.add(Duration(days: 1));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.selectionRequest!.type != null)
          H5((widget.selectionRequest!.type == 'Vacancy')
              ? 'Вакансия'
              : 'Замена'),
        HBox(Insets.x2),
        if (widget.selectionRequest!.createDt != null)
          TextPropertyWidget(
            'Дата создания заявки',
            ddMMMM(
              DateTime.parse(widget.selectionRequest!.createDt!),
            ),
          ),
        if (widget.selectionRequest!.closeDt != null)
          TextPropertyWidget(
            'Дата отмены заявки',
            ddMMMM(
              DateTime.parse(widget.selectionRequest!.closeDt!),
            ),
          ),
        if (_replacementStartDate != null)
          TextPropertyWidget(
            'Дата начала замены',
            ddDotMMDotyyyy(_replacementStartDate),
          ),
        if (widget.selectionRequest!.workerSchedule != null)
          TextPropertyWidget(
            'График работы',
            widget.selectionRequest!.workerSchedule!['description'] ??
                'не указано',
            twoLines: true,
          ),
        if (widget.selectionRequest!.createEmployeeName != null)
          TextPropertyWidget(
            'ФИО создателя',
            widget.selectionRequest!.createEmployeeName ?? 'не указано',
            twoLines: true,
          ),
        if (widget.selectionRequest!.cancelEmployeeName != null)
          TextPropertyWidget(
            'ФИО отменившего заявку',
            widget.selectionRequest!.cancelEmployeeName ?? 'не указано',
            twoLines: true,
          ),
        if (widget.selectionRequest!.comment != null)
          if (widget.selectionRequest!.comment!.isNotEmpty)
            TextPropertyWidget(
              'Комментарий',
              widget.selectionRequest!.comment ?? 'не указано',
              twoLines: true,
            ),
        HBox(Insets.x8),
        if (exception != null)
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.x2),
            child: FormAlertWidget(
              message: exception.toString(),
              type: FormAlertTypes.error,
            ),
          ),
        SimpleButton(
          onPressed: widget.selectionRequest!.isEnableClosing
              ? () => _handleDeleteRequest(
                    type: (widget.selectionRequest!.type == 'Vacancy')
                        ? 'Вакансия'
                        : 'Подбор',
                    id: widget.selectionRequest!.requestId,
                  )
              : null,
          buttonType: ButtonTypes.cancel,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.clear),
              VBox(Insets.x2),
              Text(widget.selectionRequest!.closeDt == null
                  ? 'Отменить заявку'
                  : 'Заявка уже отменена'),
            ],
          ),
        ),
        HBox(MediaQuery.of(context).padding.bottom),
      ],
    );
  }

  Widget _buildMobileForm(Exception? exception) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        H5('Заявка на мобильного сотрудника'),
        HBox(Insets.x2),
        if (widget.mobileRequest!.createDt != null)
          TextPropertyWidget(
            'Дата создания заявки',
            ddMMMM(
              DateTime.parse(widget.mobileRequest!.createDt!),
            ),
          ),
        if (widget.mobileRequest!.closeDt != null)
          TextPropertyWidget(
            'Дата отмены заявки',
            ddMMMM(
              DateTime.parse(widget.mobileRequest!.closeDt!),
            ),
          ),
        if (widget.mobileRequest!.mobileWorkStartDate != null &&
            widget.mobileRequest!.mobileWorkEndDate != null)
          TextPropertyWidget(
            'Период потребности',
            '${widget.mobileRequest!.mobileWorkStartDate} - ${widget.mobileRequest!.mobileWorkEndDate}',
          ),
        if (widget.mobileRequest!.mobileWorkStartTime != null &&
            widget.mobileRequest!.mobileWorkEndTime != null)
          TextPropertyWidget(
            'График смены',
            '${widget.mobileRequest!.mobileWorkStartTime} - ${widget.mobileRequest!.mobileWorkEndTime}',
          ),
        TextPropertyWidget(
          'Процент подзаявок\nс найденным исполнителем',
          '${widget.mobileRequest!.foundPercent}%',
          crossAxisAlignment: CrossAxisAlignment.end,
        ),
        TextPropertyWidget('Число активных подзаявок',
            widget.mobileRequest!.mobileWorkActiveCount.toString()),
        if (widget.mobileRequest!.createEmployeeName != null)
          TextPropertyWidget(
            'ФИО создателя',
            widget.mobileRequest!.createEmployeeName ?? 'не указано',
            twoLines: true,
          ),
        if (widget.mobileRequest!.cancelEmployeeName != null)
          TextPropertyWidget(
            'ФИО отменившего заявку',
            widget.mobileRequest!.cancelEmployeeName ?? 'не указано',
            twoLines: true,
          ),
        if (widget.mobileRequest!.comment != null)
          if (widget.mobileRequest!.comment!.isNotEmpty)
            TextPropertyWidget(
              'Комментарий',
              widget.mobileRequest!.comment ?? 'не указано',
              twoLines: true,
            ),
        HBox(Insets.x8),
        if (exception != null)
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.x2),
            child: FormAlertWidget(
              message: exception.toString(),
              type: FormAlertTypes.error,
            ),
          ),
        if (widget.mobileRequest!.foundPercent > 0)
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.x4),
            child: SimpleButton(
              buttonType: ButtonTypes.primary,
              onPressed: () async {
                await showModalSheet(
                  context,
                  ModalDialogWidget.custom(
                    child: StoreSelectionDetailWidget(
                      requestId: widget.mobileRequest!.requestId,
                      isRequestCanceled:
                          widget.mobileRequest!.closeDt == null ? false : true,
                    ),
                  ),
                  minHeight: 200,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.list),
                  VBox(Insets.x2),
                  Text('Открыть список подзаявок'),
                ],
              ),
            ),
          ),
        SimpleButton(
          onPressed: widget.mobileRequest!.isEnableClosing
              ? () => _handleDeleteRequest(
                    type: 'Mobile',
                    id: widget.mobileRequest!.requestId,
                  )
              : null,
          buttonType: ButtonTypes.cancel,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.clear),
              VBox(Insets.x2),
              Text(widget.mobileRequest!.closeDt == null
                  ? 'Отменить заявку'
                  : 'Заявка уже отменена'),
            ],
          ),
        ),
        HBox(MediaQuery.of(context).padding.bottom),
      ],
    );
  }
}

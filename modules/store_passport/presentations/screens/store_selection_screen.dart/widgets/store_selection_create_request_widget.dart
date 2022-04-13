import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:dixy_staff/modules/store_passport/domain/bloc/index.dart';
import 'package:dixy_staff/modules/store_passport/presentations/screens/store_selection_screen.dart/store_selection_screen.dart';
import 'package:dixy_staff/modules/store_passport/presentations/widgets/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/insets.dart';
import 'package:dixy_staff/ui_kit/decorations/formatters/date.dart';
import 'package:dixy_staff/ui_kit/widgets/alerts/form_alert.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/button/select_date_button.dart';
import 'package:dixy_staff/ui_kit/widgets/button/simple_button.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreSelectionCreateRequestWidget extends StatelessWidget {
  final SelectionType selectionType;
  final StoreSelectionPositionModel position;
  final List<StoreSelectionWorkerSchedule>? workerSchedules;
  final List<StoreSelectionWorkerSchedule>? workerSchedulesMobile;
  final Function onUpdate;

  const StoreSelectionCreateRequestWidget({
    Key? key,
    this.workerSchedules,
    this.workerSchedulesMobile,
    required this.position,
    required this.selectionType,
    required this.onUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoreSelectionRequestBloc>(
      create: (context) => StoreSelectionRequestBloc(remoteDataSource: sl()),
      child: _StoreSelectionCreateRequestWidget(
        selectionType: selectionType,
        workerSchedules: workerSchedules,
        workerSchedulesMobile: workerSchedulesMobile,
        position: position,
        onUpdate: onUpdate,
      ),
    );
  }
}

class _StoreSelectionCreateRequestWidget extends StatefulWidget {
  final SelectionType selectionType;
  final StoreSelectionPositionModel position;
  final List<StoreSelectionWorkerSchedule>? workerSchedules;
  final List<StoreSelectionWorkerSchedule>? workerSchedulesMobile;
  final Function onUpdate;

  const _StoreSelectionCreateRequestWidget({
    Key? key,
    this.workerSchedules,
    this.workerSchedulesMobile,
    required this.position,
    required this.selectionType,
    required this.onUpdate,
  }) : super(key: key);

  @override
  State<_StoreSelectionCreateRequestWidget> createState() =>
      __StoreSelectionCreateRequestWidgetState();
}

class __StoreSelectionCreateRequestWidgetState
    extends State<_StoreSelectionCreateRequestWidget> {
  final _commentTextController = TextEditingController();

  var _placeholderDateRange = 'Укажите период';
  var _placeholderDate = 'Укажите дату';
  var _selected = false;
  DateTime? _replacementDate;
  DateTime? _mobileWorkStart;
  DateTime? _mobileWorkEnd;
  var shedules = <DropdownMenuItem>[];
  String? _sheduleValue;

  var _isValid = true;

  void _handleCreateMobileRequest() {
    if (_selected) {
      final workerScheduleMobile = widget.workerSchedulesMobile!
          .firstWhere((element) => element.description == _sheduleValue);

      final newMobileRequest = StoreSelectionPostModel(
        positionId: widget.position.positionId,
        type: 'Mobile',
        workerScheduleId: workerScheduleMobile.scheduleId,
        mobileWorkStart: _mobileWorkStart.toString(),
        mobileWorkEnd: _mobileWorkEnd.toString(),
        comment: _commentTextController.text,
      );

      BlocProvider.of<StoreSelectionRequestBloc>(context)
          .add(CreateStoreSelectionRequestEvent(newMobileRequest));
    } else {
      setState(() {
        _isValid = false;
      });
    }
  }

  void _handleCreateSelectionRequest() {
    final workerSchedule = widget.workerSchedules!
        .firstWhere((element) => element.description == _sheduleValue);

    if (widget.selectionType == SelectionType.replacement) {
      if (_selected) {
        final newReplacementRequest = StoreSelectionPostModel(
          positionId: widget.position.positionId,
          type: 'Replacement',
          workerScheduleId: workerSchedule.scheduleId,
          separationDate: _replacementDate.toString(),
          comment: _commentTextController.text,
        );

        BlocProvider.of<StoreSelectionRequestBloc>(context)
            .add(CreateStoreSelectionRequestEvent(newReplacementRequest));
      } else {
        setState(() {
          _isValid = false;
        });
      }
    } else {
      final newVacancyRequest = StoreSelectionPostModel(
        positionId: widget.position.positionId,
        type: 'Vacancy',
        workerScheduleId: workerSchedule.scheduleId,
        comment: _commentTextController.text,
      );
      BlocProvider.of<StoreSelectionRequestBloc>(context)
          .add(CreateStoreSelectionRequestEvent(newVacancyRequest));
    }
  }

  @override
  void initState() {
    super.initState();

    if (widget.selectionType == SelectionType.mobile) {
      if (widget.workerSchedulesMobile!.isNotEmpty) {
        widget.workerSchedulesMobile!.forEach((element) {
          shedules.add(
            DropdownMenuItem(
              value: element.description ?? 'Нет описания графика работы',
              child: Text(element.description ?? 'Нет описания графика работы'),
            ),
          );
        });
      }
    } else {
      if (widget.workerSchedules!.isNotEmpty) {
        widget.workerSchedules!.forEach((element) {
          shedules.add(
            DropdownMenuItem(
              value: element.description ?? 'Нет описания графика работы',
              child: Text(element.description ?? 'Нет описания графика работы'),
            ),
          );
        });
      }
    }

    _sheduleValue = shedules.first.value;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreSelectionRequestBloc, StoreSelectionRequestState>(
        builder: (context, state) {
      if (state is InitialStoreSelectionRequestState) {
        return _buildForm();
      } else if (state is CreatingStoreSelectionRequestState) {
        return StorePassportModalLoader(message: state.message);
      } else if (state is CreatedStoreSelectionRequestState) {
        widget.onUpdate();
        return StorePassportModalLoader(
          message: 'Заявка успешно создана!',
          isLoaded: true,
        );
      } else if (state is FailureStoreSelectionRequestState) {
        return _buildForm(exception: Exception(state.message));
      } else {
        return Container();
      }
    });
  }

  Widget _buildForm({Exception? exception}) {
    final _dropDownWidget = Container(
      decoration: BoxDecoration(
        color: Theme.of(context).inputDecorationTheme.fillColor,
        borderRadius: BorderRadius.circular(Dimens.defaultButtonRadius + 2),
        border: Border.all(
          color:
              Theme.of(context).inputDecorationTheme.border!.borderSide.color,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.x2_5),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              dropdownColor: Theme.of(context).canvasColor,
              isExpanded: true,
              elevation: 2,
              value: _sheduleValue,
              items: shedules,
              onChanged: (dynamic newValue) {
                setState(() {
                  _sheduleValue = newValue;
                });
              }),
        ),
      ),
    );

    return Container(
      padding: EdgeInsets.all(Dimens.defaultModalCardRadius),
      child: widget.selectionType == SelectionType.mobile
          ? _buildMobileRequestBody(_dropDownWidget, context, exception)
          : _buildRequestBody(_dropDownWidget, context, exception),
    );
  }

  Column _buildMobileRequestBody(
      Container _dropDownWidget, BuildContext context, Exception? exception) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        H6('Заявка на мобильного сотрудника'),
        HBox(Insets.x6),
        Description('Индивидуальный график работы сотрудника'),
        HBox(Insets.x2),
        _dropDownWidget,
        HBox(Insets.x6),
        Description('Период потребности в мобильном сотруднике'),
        HBox(Insets.x2),
        _buildDateRangePicker(context),
        HBox(Insets.x6),
        Description('Комментарий'),
        HBox(Insets.x2),
        TextField(
          controller: _commentTextController,
          decoration: InputDecoration(
            hintText: 'Введите комментарий...',
            contentPadding: EdgeInsets.all(Insets.x3),
          ),
          maxLines: 3,
          minLines: 3,
        ),
        HBox(Insets.x4),
        if (_isValid == false)
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.x2),
            child: FormAlertWidget(
              message: 'Необходимо указать период',
              type: FormAlertTypes.error,
            ),
          ),
        if (exception != null)
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.x2),
            child: FormAlertWidget(
              message: exception.toString(),
              type: FormAlertTypes.error,
            ),
          ),
        SimpleButton(
          onPressed: () => _handleCreateMobileRequest(),
          minWidth: double.infinity,
          buttonType: ButtonTypes.accent,
          child: Text('Создать заявку'),
        ),
        HBox(MediaQuery.of(context).padding.bottom +
            MediaQuery.of(context).viewInsets.bottom),
      ],
    );
  }

  Column _buildRequestBody(
      Container _dropDownWidget, BuildContext context, Exception? exception) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.selectionType == SelectionType.replacement
            ? H6('Подбор на замену')
            : H6('Подбор на вакансию'),
        HBox(Insets.x6),
        Description('Индивидуальный график работы сотрудника'),
        HBox(Insets.x2),
        _dropDownWidget,
        HBox(Insets.x6),
        if (widget.selectionType == SelectionType.replacement)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Description('Текущий сотрудник работает до'),
              HBox(Insets.x2),
              _buildDatePicker(context),
              HBox(Insets.x6),
            ],
          ),
        Description('Комментарий'),
        HBox(Insets.x2),
        TextField(
          controller: _commentTextController,
          decoration: InputDecoration(
            hintText: 'Введите комментарий...',
            contentPadding: EdgeInsets.all(Insets.x3),
          ),
          maxLines: 3,
          minLines: 3,
        ),
        HBox(Insets.x4),
        if (widget.selectionType == SelectionType.replacement)
          if (_isValid == false)
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.x2),
              child: FormAlertWidget(
                message: 'Необходимо указать дату',
                type: FormAlertTypes.error,
              ),
            ),
        if (exception != null)
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.x2),
            child: FormAlertWidget(
              message: exception.toString(),
              type: FormAlertTypes.error,
            ),
          ),
        SimpleButton(
          onPressed: () => _handleCreateSelectionRequest(),
          minWidth: double.infinity,
          buttonType: ButtonTypes.accent,
          child: Text('Создать заявку'),
        ),
        HBox(MediaQuery.of(context).padding.bottom +
            MediaQuery.of(context).viewInsets.bottom),
      ],
    );
  }

  Widget _buildDatePicker(BuildContext context) {
    return SelectDateButton(
      placeholder: _placeholderDate,
      isSelected: _selected,
      onPressed: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
        );
        if (date != null) {
          setState(() {
            _placeholderDate = '${ddMMMMyyyy(date)}';
            _replacementDate = date;
            _selected = true;
            _isValid = true;
          });
        }
      },
    );
  }

  Widget _buildDateRangePicker(BuildContext context) {
    return SelectDateButton(
      placeholder: _placeholderDateRange,
      isSelected: _selected,
      onPressed: () async {
        final date = await showDateRangePicker(
          context: context,
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
          helpText: '',
          builder: (context, child) {
            final theme = Theme.of(context);
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: theme.colorScheme.primary,
                      onPrimary: theme.colorScheme.background,
                      onSurface: theme.colorScheme.onBackground,
                    ),
                backgroundColor: theme.colorScheme.background,
                scaffoldBackgroundColor: theme.colorScheme.background,
                appBarTheme: theme.appBarTheme.copyWith(
                  toolbarTextStyle: TextStyle(
                    fontSize: 10,
                  ),
                  color: theme.colorScheme.primary,
                  iconTheme: theme.iconTheme.copyWith(
                    color: theme.colorScheme.background,
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: Dimens.defaultScreenPadding * 5,
                  horizontal: Dimens.defaultScreenPadding,
                ),
                child: child,
              ),
            );
          },
        );
        if (date != null) {
          setState(() {
            _placeholderDateRange =
                '${ddMMMMyyyy(date.start)} - ${ddMMMMyyyy(date.end)}';
            _mobileWorkStart = date.start;
            _mobileWorkEnd = date.end;
            _selected = true;
            _isValid = true;
          });
        }
      },
    );
  }
}

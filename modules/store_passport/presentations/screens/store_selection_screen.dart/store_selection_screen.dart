import 'package:dixy_staff/injections_container.dart';
import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:dixy_staff/modules/store_passport/domain/bloc/index.dart';
import 'package:dixy_staff/modules/store_passport/presentations/screens/store_selection_screen.dart/widgets/index.dart';
import 'package:dixy_staff/modules/store_passport/presentations/widgets/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/themes.dart';
import 'package:dixy_staff/ui_kit/widgets/alerts/form_alert.dart';
import 'package:dixy_staff/ui_kit/widgets/badges/count_badge.dart';
import 'package:dixy_staff/ui_kit/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/button/simple_button.dart';
import 'package:dixy_staff/ui_kit/widgets/dialogs/modal_dialog.dart';
import 'package:dixy_staff/ui_kit/widgets/pages/error_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

enum SelectionType { vacancy, replacement, mobile }

class StoreSelectionScreen extends StatelessWidget {
  const StoreSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoreSelectionBloc>(
      create: (context) => StoreSelectionBloc(remoteDataSource: sl()),
      child: _StoreSelectionScreen(),
    );
  }
}

class _StoreSelectionScreen extends StatefulWidget {
  const _StoreSelectionScreen({Key? key}) : super(key: key);

  @override
  ___StoreSelectionScreenState createState() => ___StoreSelectionScreenState();
}

class ___StoreSelectionScreenState extends State<_StoreSelectionScreen> {
  StoreSelectionViewModel? _cachedModel;
  var _dropdownValue = '';

  @override
  void initState() {
    super.initState();

    BlocProvider.of<StoreSelectionBloc>(context)
        .add(ReadStoreSelectionViewEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Подбор персонала',
          overflow: TextOverflow.fade,
        ),
      ),
      body: StorePassportOverlayWidget(
        child: BlocBuilder<StoreSelectionBloc, StoreSelectionState>(
            builder: (context, state) {
          if (state is LoadingStoreSelectionState) {
            if (_cachedModel == null) {
              return StorePassportLoader(message: state.message);
            } else {
              context.loaderOverlay.show();
              return _buildBody(context, _cachedModel!);
            }
          } else if (state is ErrorStoreSelectionState) {
            return ErrorPageWidget(
              message: state.message,
              onRepeat: () => BlocProvider.of<StoreSelectionBloc>(context)
                  .add(ReadStoreSelectionViewEvent()),
            );
          } else if (state is LoadedStoreSelectionViewState) {
            context.loaderOverlay.hide();
            _cachedModel = state.selectionViewModel;
            return _buildBody(context, state.selectionViewModel);
          } else if (state is ForbiddenStoreSelectionState) {
            return Container(
              padding: const EdgeInsets.all(Dimens.defaultScreenPadding),
              child: FormAlertWidget(
                message: state.message,
                type: FormAlertTypes.tip,
              ),
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }

  Widget _buildBody(BuildContext context, StoreSelectionViewModel model) {
    if (model.positions == null || model.positions!.isEmpty) {
      return Container(
        color: getOnePageColor(context),
        padding: const EdgeInsets.all(Dimens.defaultScreenPadding),
        child: Column(
          children: [
            FormAlertWidget(
              message: 'Нет информации по подбору персонала',
              type: FormAlertTypes.warning,
            ),
          ],
        ),
      );
    }

    var positions = <String>[];
    model.positions!.forEach((element) {
      if (element.name != null) {
        positions.add(element.name!);
      }
    });

    if (_dropdownValue.isEmpty && positions.isNotEmpty) {
      _dropdownValue = positions.first;
    }

    return Container(
      color: getOnePageColor(context),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.all(Dimens.defaultScreenPadding),
              children: [
                if (positions.isNotEmpty)
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      bottom: Insets.x4,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).inputDecorationTheme.fillColor,
                      border: Border.all(
                        width: 1,
                        color: Theme.of(context)
                            .inputDecorationTheme
                            .border!
                            .borderSide
                            .color,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ButtonTheme(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: Insets.x2_5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            dropdownColor: Theme.of(context).canvasColor,
                            isExpanded: true,
                            elevation: 2,
                            value: _dropdownValue,
                            items: positions.map((String employee) {
                              var totalCount = 0;

                              final position = model.positions!.firstWhere(
                                  (position) => position.name == employee);

                              if (position.mobileRequests != null) {
                                position.mobileRequests!.forEach((element) {
                                  if (element.closeDt == null) totalCount++;
                                });

                                if (position.selectionRequests != null) {
                                  position.selectionRequests!
                                      .forEach((element) {
                                    if (element.closeDt == null) totalCount++;
                                  });
                                }
                              }

                              return DropdownMenuItem<String>(
                                value: employee,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(employee),
                                    ),
                                    if (totalCount != 0)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: Insets.x2,
                                        ),
                                        child: CountBadgeWidget(totalCount),
                                      ),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (val) {
                              setState(() => _dropdownValue = val!);
                            },
                            selectedItemBuilder: (context) {
                              return positions.map<Widget>((String employee) {
                                return DropdownMenuItem<String>(
                                  value: employee,
                                  child: Text(employee),
                                );
                              }).toList();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                StoreSelectionBody(
                  viewModel: model,
                  selectedPosition: _dropdownValue,
                ),
                HBox(20),
              ],
            ),
          ),
          _buildBottomButtons(
            position: model.positions!
                .firstWhere((position) => position.name == _dropdownValue),
            workerSchedules: model.workerSchedules,
            workerSchedulesMobile: model.workerSchedulesMobile,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButtons({
    StoreSelectionPositionModel? position,
    List<StoreSelectionWorkerSchedule>? workerSchedules,
    List<StoreSelectionWorkerSchedule>? workerSchedulesMobile,
  }) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultScreenPadding).copyWith(
        bottom:
            Dimens.defaultScreenPadding + MediaQuery.of(context).padding.bottom,
      ),
      child: (position == null)
          ? FormAlertWidget(
              message: 'Невозможно отправить заявку по выбранному сотруднику',
              type: FormAlertTypes.warning,
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (position.replacementSelectionEnabled ||
                    position.vacancySelectionEnabled)
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.x4),
                    child: SimpleButton(
                      onPressed: () async {
                        final selectionType =
                            position.replacementSelectionEnabled
                                ? SelectionType.replacement
                                : SelectionType.vacancy;

                        _handleTapButton(
                          position: position,
                          workerSchedules: workerSchedules,
                          workerSchedulesMobile: workerSchedulesMobile,
                          selectionType: selectionType,
                        );
                      },
                      minWidth: double.infinity,
                      buttonType: ButtonTypes.primary,
                      textColor: Colors.white,
                      child: position.replacementSelectionEnabled
                          ? Text('Подбор на замену')
                          : Text('Подбор на вакансию'),
                    ),
                  ),
                SimpleButton(
                  onPressed: position.mobileSelectionEnabled
                      ? () async {
                          _handleTapButton(
                            position: position,
                            workerSchedules: workerSchedules,
                            workerSchedulesMobile: workerSchedulesMobile,
                            selectionType: SelectionType.mobile,
                          );
                        }
                      : null,
                  minWidth: double.infinity,
                  buttonType: ButtonTypes.primary,
                  textColor: Colors.white,
                  child: Text('Мобильный сотрудник'),
                ),
              ],
            ),
    );
  }

  void _handleTapButton({
    required StoreSelectionPositionModel position,
    List<StoreSelectionWorkerSchedule>? workerSchedules,
    List<StoreSelectionWorkerSchedule>? workerSchedulesMobile,
    required SelectionType selectionType,
  }) async {
    final sheetResult = await showModalSheet(
      context,
      ModalDialogWidget.custom(
          child: StoreSelectionCreateRequestWidget(
        selectionType: selectionType,
        workerSchedules: workerSchedules,
        workerSchedulesMobile: workerSchedulesMobile,
        position: position,
        onUpdate: () async {
          await Future.delayed(
            Duration(milliseconds: 300),
          );
          Navigator.pop(context, true);
        },
      )),
    );

    if (sheetResult != null && sheetResult) {
      BlocProvider.of<StoreSelectionBloc>(context)
          .add(ReadStoreSelectionViewEvent());
    }
  }
}

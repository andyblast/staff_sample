import 'package:dixy_staff/modules/store_passport/data/models/index.dart';
import 'package:dixy_staff/modules/store_passport/domain/bloc/index.dart';
import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/decorations/shapes/borders.dart';
import 'package:dixy_staff/ui_kit/widgets/alerts/form_alert.dart';
import 'package:dixy_staff/ui_kit/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/button/simple_button.dart';
import 'package:dixy_staff/ui_kit/widgets/dialogs/modal_dialog.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'store_ambulance_question.dart';

class AmbulanceBodyWidget extends StatefulWidget {
  final List<StoreAmbulanceQuestionModel> allQuestions;
  final List<StoreAmbulanceGroupModel> allGroups;
  final bool isWriteAllowed;

  AmbulanceBodyWidget({
    Key? key,
    required this.allQuestions,
    required this.allGroups,
    required this.isWriteAllowed,
  }) : super(key: key);

  @override
  _AmbulanceBodyWidgetState createState() => _AmbulanceBodyWidgetState();
}

class _AmbulanceBodyWidgetState extends State<AmbulanceBodyWidget> {
  var answers = <int, bool>{};

  void _handleSendAnswers() async {
    await showModalSheet(
      context,
      ModalDialogWidget.question(
        title: 'Сохранение',
        description: 'Вы уверены, что хотите сохранить текущее состояние?',
        firstButtonName: 'Сохранить',
        secondButtonName: 'Отмена',
        onAcceptTap: () {
          Navigator.pop(context);

          var answersResult = <StoreAmbulanceAnswerModel>[];

          answers.forEach(
            (key, value) => answersResult.add(
              StoreAmbulanceAnswerModel(questionId: key, answer: !value),
            ),
          );

          final result = StoreAmbulancePostModel(
            shopAmbulanceAnswers: answersResult,
          );

          BlocProvider.of<StoreAmbulanceBloc>(context)
              .add(StoreAmbulanceEvent.update(result));
        },
        onDeclineTap: () => Navigator.pop(context),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    widget.allQuestions.forEach((question) {
      answers[question.questionId] = !question.answer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(Dimens.defaultScreenPadding),
      children: [
        Container(
          child: FormAlertWidget(
            message:
                'Если в магазине есть соответствующая проблема, укажите ее наличие, переведя переключатель в правое положение.\n\nЕсли проблема решена, переведите переключатель в левое положение.\n\nНажмите кнопку "Сохранить" внизу списка',
            type: FormAlertTypes.tip,
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: widget.allGroups.length,
          itemBuilder: (context, index) {
            final group = widget.allGroups.elementAt(index);

            return _buildQuestionsCategory(
              title: group.name!,
              questions: widget.allQuestions
                  .where((question) =>
                      question.questionGroupId == group.questionGroupId)
                  .toList(),
              isWriteAllowed: widget.isWriteAllowed,
            );
          },
        ),
        HBox(Insets.x4),
        SimpleButton(
          onPressed:
              (widget.isWriteAllowed) ? () => _handleSendAnswers() : null,
          buttonType: ButtonTypes.primary,
          textColor: Colors.white,
          child: Text('Сохранить'),
        ),
        HBox(MediaQuery.of(context).padding.bottom),
      ],
    );
  }

  Widget _buildQuestionsCategory({
    required String title,
    List<StoreAmbulanceQuestionModel>? questions,
    required bool isWriteAllowed,
  }) {
    return (questions != null)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HBox(Insets.x4),
              H7(title),
              HBox(Insets.x2),
              Card(
                shape: getRoundedBorder(Dimens.defaultButtonRadius),
                child: Padding(
                  padding: const EdgeInsets.all(Insets.x2),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: questions.length,
                    itemBuilder: (context, index) {
                      final question = questions.elementAt(index);

                      return AmbulanceQuestion(
                        title: questions.elementAt(index).name,
                        onToggle: (val) => setState(() {
                          answers[question.questionId] = val;
                        }),
                        value: answers[question.questionId]!,
                        isWriteAllowed: isWriteAllowed,
                      );
                    },
                    separatorBuilder: (context, index) => HBox(Insets.x2),
                  ),
                ),
              ),
            ],
          )
        : Container();
  }
}

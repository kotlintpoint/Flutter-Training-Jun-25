import 'package:flutter/material.dart';
import 'package:quiz_app/AnswerButton.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentQuestion.text),
            SizedBox(height: 30),
            ...currentQuestion.getShuffleAnswers().map((answer){
              return AnswerButton(onTap: () {}, answerText: answer);
            })
          ],
        ),
      ),
    );
  }
}

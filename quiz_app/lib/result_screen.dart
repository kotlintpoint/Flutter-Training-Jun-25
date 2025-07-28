import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> data = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      data.add({
        "question_index": i + 1,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": chosenAnswers[i],
      });
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {

    var numOfQuestions = questions.length;
    var summaryData = getSummaryData();
    var numOfCorrectAnswers = summaryData.where((summary) {
      return summary["user_answer"] == summary["correct_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You answered $numOfCorrectAnswers out of $numOfQuestions questions correctly!!!"),
          SizedBox(height: 20),
          QuestionSummary(summaryData: getSummaryData()),
          SizedBox(height: 20),
          TextButton(onPressed: () {}, child: Text("Restart Quiz")),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((summary) {
            return Row( // screen width
              children: [
                Text(summary['question_index'].toString()),
                Expanded(
                  child: Column( // screen height , width out of screen
                    children: [
                      Text(summary['question'].toString()),
                      Text(summary['correct_answer'].toString()),
                      Text(summary['user_answer'].toString()),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  // Widget? activeScreen;
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }
  //
  // void switchScreen() {
  //   setState(() {
  //     activeScreen = QuestionsScreen();
  //   });
  // }

  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    const topAlignment = Alignment.topLeft;
    const bottomAlignment = Alignment.bottomRight;

    Widget? widgetScreen = StartScreen(switchScreen);
    if(activeScreen == 'question-screen') {
      widgetScreen = QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body:
          Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 60, 75, 150),
                    Color.fromARGB(250, 17, 7, 251),
                  ],
                  begin: topAlignment,
                  end: bottomAlignment,
                ),
              ),
              // child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : QuestionsScreen()
            child: widgetScreen,
          ),
      ),
    );
  }
}

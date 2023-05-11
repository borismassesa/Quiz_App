import 'package:flutter/material.dart';
import 'package:adv_basic_app/start_screen.dart';
import 'package:adv_basic_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = "Start Screen";
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      //activeScreen = const QuestionScreen() as String;
      activeScreen = "Question Screen";
    });
  }

  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);
    });
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == "Start Screen"
    //     ? StartScreen(switchScreen)
    //     : const QuestionScreen();

    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "Question Screen") {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

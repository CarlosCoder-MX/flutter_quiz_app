import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/start_screen.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/results_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// ... (other imports and class definitions remain unchanged)

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
Widget build(BuildContext context) {
  late Widget screenWidget; // Declare screenWidget as late

  if (activeScreen == 'start-screen') {
    screenWidget = StartScreen(switchScreen);
  } else if (activeScreen == 'questions-screen') {
    screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
  } else if (activeScreen == 'results-screen') {
    screenWidget = const ResultsScreen();
  } else {
    // Handle any other scenario if needed
    screenWidget = Container(); // Assign a default value
  }

  return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 52, 7, 130),
              Color.fromARGB(255, 98, 21, 231),
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
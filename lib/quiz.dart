import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/start_screen.dart';
import 'package:flutter_quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
const Quiz({super.key});

 @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartScreen();

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }


  @override
  Widget build(context) {
    return 

    MaterialApp(
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
          child: activeScreen,
        ),
      ),
    );
  }
}
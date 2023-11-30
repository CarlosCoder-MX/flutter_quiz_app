// import 'package:flutter/material.dart';
// import 'package:flutter_quiz_app/quiz.dart';


// void main() {
//   runApp(const Quiz());
// }

import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Set this property to false
      home: Quiz(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:sipmle_quiz/quiz_home.dart';

import 'components/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
        ),
        primarySwatch: primaryColor,
      ),
      home: const QuizHome(),
    );
  }
}


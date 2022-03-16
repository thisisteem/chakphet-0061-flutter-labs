import 'package:flutter/material.dart';
import 'package:lab10_p3_6130400061/app_screens/restart.dart';

import 'app_screens/quiz_list.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        'quiz': (context) => const QuizList(),
        'restart': (context) => const Restart(),
      },
    );
  }
}

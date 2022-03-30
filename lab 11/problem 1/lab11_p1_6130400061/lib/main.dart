import 'package:flutter/material.dart';
import 'package:lab11_p1_6130400061/app_screens/restart.dart';
import 'package:lab11_p1_6130400061/states/total_score_provider.dart';
import 'package:provider/provider.dart';

import 'app_screens/quiz_list.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TotalScoreProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(),
          'quiz': (context) => const QuizList(),
          'restart': (context) => const Restart(),
        },
      ),
    );
  }
}
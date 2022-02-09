import 'package:flutter/material.dart';
import 'app_screens/guess_where.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    // debugPrint(screenW.toString());

    return Scaffold(
      appBar: screenW <= 600
          ? AppBar(
              title: const Text('Guess Where'),
              backgroundColor: Colors.blue,
            )
          : null,
      body: const SafeArea(
        child: GuessWhere(),
      ),
    );
  }
}

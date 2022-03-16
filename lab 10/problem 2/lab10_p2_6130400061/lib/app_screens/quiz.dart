import 'package:flutter/material.dart';

import 'guess_where.dart';

class Quiz extends StatefulWidget {
  final List<GuessWhere> quizItems;
  const Quiz({Key? key, required this.quizItems}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestion = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: widget.quizItems[currentQuestion]),
          quizButton(currentQuestion, widget.quizItems.length),
        ],
      ),
    );
  }

  Widget quizButton(int index, int arrayLenght) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: index != 0,
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  currentQuestion -= 1;
                });
              },
              child: const Text('Previous'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: const Text('Home'),
          ),
          Visibility(
            visible: index != arrayLenght - 1,
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  currentQuestion += 1;
                });
              },
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}

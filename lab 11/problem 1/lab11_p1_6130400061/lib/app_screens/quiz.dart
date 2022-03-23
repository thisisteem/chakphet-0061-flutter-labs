import 'package:flutter/material.dart';
import 'package:lab11_p1_6130400061/app_screens/restart.dart';

import 'guess_where.dart';

class Quiz extends StatefulWidget {
  final List<GuessWhere> quizItems;
  final int currentQuestion;
  final Function nextQuestion;
  final Function previousQuestion;
  const Quiz(
      {Key? key,
      required this.quizItems,
      required this.currentQuestion,
      required this.nextQuestion,
      required this.previousQuestion})
      : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: widget.currentQuestion < widget.quizItems.length
                ? widget.quizItems[widget.currentQuestion]
                : const Restart(),
          ),
          Visibility(
            child: quizButton(widget.currentQuestion, widget.quizItems.length),
            visible: widget.currentQuestion < widget.quizItems.length,
          ),
        ],
      ),
    );
  }

  // void nextQuestion() {
  //   debugPrint('$currentQuestion');
  //   setState(() {
  //     currentQuestion += 1;
  //   });
  // }

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
                widget.previousQuestion();
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
          ElevatedButton(
            onPressed: () {
              if (index == arrayLenght - 1) {
                Navigator.pushNamed(context, 'restart');
              } else {
                widget.nextQuestion();
              }
            },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}

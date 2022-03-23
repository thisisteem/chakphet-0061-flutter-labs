import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../states/total_score_provider.dart';

class Restart extends StatelessWidget {
  const Restart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final score = Provider.of<TotalScoreProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your total score is ${score.setScore}',
                style: const TextStyle(fontSize: 40),
              ),
              ElevatedButton(
                child: const Text('Restart'),
                onPressed: () => Navigator.pushNamed(context, '/'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

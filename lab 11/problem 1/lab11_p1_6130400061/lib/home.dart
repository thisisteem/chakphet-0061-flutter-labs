import 'package:flutter/material.dart';
import 'package:lab11_p1_6130400061/states/total_score_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final score = Provider.of<TotalScoreProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/quiz.jpg',
                  height: 200,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Welcome to the Quiz App',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'By Chakphet Phachanawan 613040006-1',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.pinkAccent.shade200),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  score.setScore = 0;
                  Navigator.pushNamed(context, 'quiz');
                },
                child: const Text('Start'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

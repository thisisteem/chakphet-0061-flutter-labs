import 'package:flutter/material.dart';
import 'package:lab10_p1_6130400061/app_screens/guess_where.dart';
import 'package:lab10_p1_6130400061/app_screens/quiz.dart';

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
    return Scaffold(
      body: Quiz(
        quizItems: [
          GuessWhere(
            question: 'Where is this picture',
            questionNumber: 1,
            url:
                'https://www.thaibicusa.com/wp-content/uploads/2020/06/New-yORK.jpg',
            choice_1: Choice(
              name: 'New york',
              isAnswer: true,
              color: Colors.orange.shade300,
            ),
            choice_2: Choice(
              name: 'London',
              isAnswer: false,
              color: Colors.purpleAccent.shade100,
            ),
            choice_3: Choice(
              name: 'Bangkok',
              isAnswer: false,
              color: Colors.blueAccent.shade200,
            ),
            choice_4: Choice(
              name: 'Rio de Janeiro',
              isAnswer: false,
              color: Colors.yellow.shade900,
            ),
          ),
          GuessWhere(
            question: 'Where is this picture',
            questionNumber: 2,
            url:
                'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTeg5A-v0pkIXd6ujJZZVB2_RCzEggm-Q2D1vz7HJLjX2Yq6avxsdCo-ZYyPNbmvdV-c0X7OOh5XBywDzkelxQGiA',
            choice_1: Choice(
              name: 'Thailand',
              isAnswer: false,
              color: Colors.orange.shade300,
            ),
            choice_2: Choice(
              name: 'London',
              isAnswer: false,
              color: Colors.purpleAccent.shade100,
            ),
            choice_3: Choice(
              name: 'Paris',
              isAnswer: true,
              color: Colors.blueAccent.shade200,
            ),
            choice_4: Choice(
              name: 'Canada',
              isAnswer: false,
              color: Colors.yellow.shade900,
            ),
          ),
          GuessWhere(
            question: 'Where is this picture',
            questionNumber: 3,
            url:
                'https://loveincorporated.blob.core.windows.net/contentimages/gallery/a1f591c8-de4d-4960-9b38-3c451ad3ec66-Houses_Parliament-Bikeworldtravel-shutterstock.jpg',
            choice_1: Choice(
              name: 'Malaysia',
              isAnswer: false,
              color: Colors.orange.shade300,
            ),
            choice_2: Choice(
              name: 'Rio de Janeiro',
              isAnswer: false,
              color: Colors.purpleAccent.shade100,
            ),
            choice_3: Choice(
              name: 'Bangkok',
              isAnswer: false,
              color: Colors.blueAccent.shade200,
            ),
            choice_4: Choice(
              name: 'London',
              isAnswer: true,
              color: Colors.yellow.shade900,
            ),
          ),
        ],
      ),
    );
  }
}

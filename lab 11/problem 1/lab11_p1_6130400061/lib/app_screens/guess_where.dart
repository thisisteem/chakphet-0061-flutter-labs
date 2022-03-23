import 'package:flutter/material.dart';
import 'package:lab11_p1_6130400061/states/total_score_provider.dart';
import 'package:provider/provider.dart';

class GuessWhere extends StatelessWidget {
  final String question;
  final int questionNumber;
  final String url;
  final Choice choice_1;
  final Choice choice_2;
  final Choice choice_3;
  final Choice choice_4;
  const GuessWhere({
    Key? key,
    required this.question,
    required this.questionNumber,
    required this.url,
    required this.choice_1,
    required this.choice_2,
    required this.choice_3,
    required this.choice_4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    List<Choice> choiceList = [choice_1, choice_2, choice_3, choice_4];
    choiceList.shuffle();

    return Scaffold(
      appBar: screenW <= 600
          ? AppBar(
              title: Text('Question $questionNumber'),
              backgroundColor: Colors.blue,
            )
          : null,
      body: Container(
        padding:
            screenW <= 600 ? const EdgeInsets.all(30) : const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(question,
                    textAlign: TextAlign.center,
                    style: screenW <= 600
                        ? const TextStyle(color: Colors.pink, fontSize: 30)
                        : const TextStyle(color: Colors.pink, fontSize: 25)),
              ],
            ),
            screenW <= 600
                ? const SizedBox(height: 0)
                : const SizedBox(height: 15),
            Expanded(
              child: Image(
                image: NetworkImage(url),
              ),
            ),
            screenW <= 600
                ? const SizedBox(height: 50)
                : const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                choiceList[0],
                choiceList[1],
              ],
            ),
            screenW <= 600
                ? const SizedBox(height: 30)
                : const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                choiceList[2],
                choiceList[3],
              ],
            ),
            screenW <= 600
                ? const SizedBox(height: 20)
                : const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Choice extends StatefulWidget {
  final Function nextQuestion;
  final String name;
  Color color;
  final bool isAnswer;
  Choice({
    Key? key,
    required this.name,
    required this.color,
    required this.isAnswer,
    required this.nextQuestion,
  }) : super(key: key);

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    final score = Provider.of<TotalScoreProvider>(context);

    void _handleTap(bool isAnswer) {
      if (isAnswer) {
        setState(() {
          widget.color = Colors.green;
          score.setScore += 1;
        });
        alertDialog(
          'Score!',
          'Congrats, you get 1 point',
        );
      } else if (!isAnswer) {
        setState(() {
          widget.color = Colors.red;
        });
        alertDialog(
          'Score!',
          'Sorry, you miss it!',
        );
      }
    }

    return InkWell(
      onTap: () => _handleTap(widget.isAnswer),
      child: SizedBox(
        width: screenW <= 600 ? 150.0 : 300,
        height: screenW <= 600 ? 100.0 : 50,
        child: DecoratedBox(
          decoration: BoxDecoration(color: widget.color),
          child: Container(
            alignment: Alignment.center,
            padding: screenW <= 600
                ? const EdgeInsets.all(10)
                : const EdgeInsets.all(15),
            child: Text(
              widget.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  void alertDialog(String title, String detail) => showDialog<dynamic>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(title),
          content: Text(detail),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                widget.nextQuestion();
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
}

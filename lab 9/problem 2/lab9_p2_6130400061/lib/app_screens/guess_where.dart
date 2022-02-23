import 'package:flutter/material.dart';

class GuessWhere extends StatelessWidget {
  const GuessWhere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;

    return Container(
      padding:
          screenW <= 600 ? const EdgeInsets.all(30) : const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Where is this picture?',
                  textAlign: TextAlign.center,
                  style: screenW <= 600
                      ? const TextStyle(color: Colors.pink, fontSize: 30)
                      : const TextStyle(color: Colors.pink, fontSize: 25)),
            ],
          ),
          screenW <= 600
              ? const SizedBox(height: 0)
              : const SizedBox(height: 15),
          const Expanded(
            child: Image(
              image: NetworkImage(
                  'https://www.thaibicusa.com/wp-content/uploads/2020/06/New-yORK.jpg'),
            ),
          ),
          screenW <= 600
              ? const SizedBox(height: 50)
              : const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Choice(
                  name: 'New york',
                  isAnswer: true,
                  color: Colors.orange.shade300),
              Choice(
                  name: 'London',
                  isAnswer: false,
                  color: Colors.purpleAccent.shade100)
            ],
          ),
          screenW <= 600
              ? const SizedBox(height: 30)
              : const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Choice(
                  name: 'Bangkok',
                  isAnswer: false,
                  color: Colors.blueAccent.shade200),
              Choice(
                  name: 'Rio de Janeiro',
                  isAnswer: false,
                  color: Colors.yellow.shade900)
            ],
          ),
          screenW <= 600
              ? const SizedBox(height: 20)
              : const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class Choice extends StatefulWidget {
  final String name;
  Color color;
  final bool isAnswer;
  Choice(
      {Key? key,
      required this.name,
      required this.color,
      required this.isAnswer})
      : super(key: key);

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;

    void _handleTap(bool isAnswer) {
      var snackBar = SnackBar(
        content: isAnswer
            ? const Text('Your Score is 1')
            : const Text('Your Score is 0'),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      if (isAnswer) {
        setState(() {
          widget.color = Colors.green;
        });
      } else if (!isAnswer) {
        setState(() {
          widget.color = Colors.red;
        });
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
}

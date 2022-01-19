import 'package:flutter/material.dart';

class GuessWhere extends StatelessWidget {
  const GuessWhere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Where is this picture?',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.pink, fontSize: 30),
              )
            ],
          ),
          const Expanded(
            child: Image(
              image: NetworkImage(
                  'https://www.thaibicusa.com/wp-content/uploads/2020/06/New-yORK.jpg'),
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Choice(name: 'New york', color: Colors.orange),
              Choice(name: 'London', color: Colors.lightGreen)
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Choice(name: 'Bangkok', color: Colors.blueAccent),
              Choice(name: 'Rio de Janeiro', color: Colors.red)
            ],
          ),
          const SizedBox(height: 130),
        ],
      ),
    );
  }
}

class Choice extends StatelessWidget {
  final String name;
  final Color color;
  const Choice({Key? key, required this.name, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      child: DecoratedBox(
        decoration: BoxDecoration(color: color),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

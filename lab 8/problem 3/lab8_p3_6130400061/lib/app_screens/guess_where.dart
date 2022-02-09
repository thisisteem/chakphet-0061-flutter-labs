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
            children: const [
              Choice(name: 'New york', color: Colors.orange),
              Choice(name: 'London', color: Colors.lightGreen)
            ],
          ),
          screenW <= 600
              ? const SizedBox(height: 30)
              : const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Choice(name: 'Bangkok', color: Colors.blueAccent),
              Choice(name: 'Rio de Janeiro', color: Colors.red)
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

class Choice extends StatelessWidget {
  final String name;
  final Color color;
  const Choice({Key? key, required this.name, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenW <= 600 ? 150.0 : 300,
      height: screenW <= 600 ? 100.0 : 50,
      child: DecoratedBox(
        decoration: BoxDecoration(color: color),
        child: Container(
          alignment: Alignment.center,
          padding: screenW <= 600
              ? const EdgeInsets.all(10)
              : const EdgeInsets.all(15),
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

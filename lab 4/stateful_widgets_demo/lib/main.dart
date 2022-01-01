import 'package:flutter/material.dart';

void main() {
  runApp(const ItemCounter('Stateful Widgets Demo'));
}

class ItemCounter extends StatefulWidget {
  final String name;
  const ItemCounter(this.name, {Key? key}) : super(key: key);

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amberAccent,
        appBarTheme: const AppBarTheme(color: Colors.amber),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.name),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: Text(
              '$count',
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

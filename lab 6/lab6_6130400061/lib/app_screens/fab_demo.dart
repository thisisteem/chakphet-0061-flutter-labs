import 'package:flutter/material.dart';
import 'package:lab6_6130400061/app_screens/long_list.dart';

class FABDemo extends StatefulWidget {
  const FABDemo(this.callback, this.number, {Key? key}) : super(key: key);
  final Function callback;
  final int number;

  @override
  _FABDemoState createState() => _FABDemoState();
}

class _FABDemoState extends State<FABDemo> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        widget.callback();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Current number of problems is ${widget.number + 1}"),
          ),
        );
      },
      child: const Icon(Icons.add),
      tooltip: "Add one more item",
    );
  }
}

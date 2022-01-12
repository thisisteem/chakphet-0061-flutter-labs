import 'package:flutter/material.dart';
import 'package:lab6_6130400061/app_screens/fab_demo.dart';
import 'package:lab6_6130400061/app_screens/long_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 30;
  @override
  Widget build(BuildContext context) {
    void incrementNumber() {
      setState(() {
        i++;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic List View Demo",
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Widgets Exercise'),
          ),
          body: getListView(i),
          floatingActionButton: FABDemo(incrementNumber, i)),
    );
  }
}

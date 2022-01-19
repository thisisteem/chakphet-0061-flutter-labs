import 'package:flutter/material.dart';
import 'app_screens/guess_where.dart';
import 'app_screens/person_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Layout Flutter Exercise",
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: SafeArea(
          child: PersonProfile(),
        ),
      ),
    );
  }
}

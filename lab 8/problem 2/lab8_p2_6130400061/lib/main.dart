import 'package:flutter/material.dart';
import 'app_screens/person_profile.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    // debugPrint(screenW.toString());

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: screenW <= 600
          ? AppBar(
              title: const Text('My Favorite Celeb'),
              backgroundColor: Colors.blue,
            )
          : null,
      body: const SafeArea(
        child: PersonProfile(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Favorite Quote',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Favorite Quote'),
        ),
        body: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Image(
                  image: NetworkImage(
                      'https://www.rd.com/wp-content/uploads/2021/08/albert-einstein-quotes-01-scaled.jpg'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(50),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Albert Einstein',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

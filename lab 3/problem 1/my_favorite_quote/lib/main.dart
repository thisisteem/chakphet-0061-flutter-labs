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
            const SizedBox(
              height: 100,
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'Albert',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Einstein',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

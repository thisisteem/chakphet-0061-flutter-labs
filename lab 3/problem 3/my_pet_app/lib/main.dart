import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class PetName extends StatelessWidget {
  final String name;
  final String url;
  const PetName(this.name, this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(color: Colors.pinkAccent),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(name),
          ),
        ),
        Image(
          image: NetworkImage(url),
          width: 100,
          height: 300,
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Pet App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Pet App'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              PetName('Dog',
                  'https://i.pinimg.com/originals/6f/a4/61/6fa46150ccc41aa008f0c53647b538bc.jpg'),
              SizedBox(width: 10),
              PetName('Turtle',
                  'https://media.discordapp.net/attachments/547054845119692801/908585571436351508/received_366164537972546.jpeg?width=505&height=676'),
              SizedBox(width: 10),
              PetName(
                  'Dragon', 'https://pbs.twimg.com/media/DyaBpnmVsAAEKnK.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}

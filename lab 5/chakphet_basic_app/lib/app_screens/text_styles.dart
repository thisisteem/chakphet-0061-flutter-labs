import 'package:flutter/material.dart';

class MyName extends StatelessWidget {
  const MyName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(
          left: 30,
          top: 50,
          right: 30,
          bottom: 50,
        ),
        margin: const EdgeInsets.all(20),
        color: Colors.orange,
        child: const Text(
          'จักรเพชร ภาชนะวรรณ',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.indigoAccent,
            decoration: TextDecoration.none,
            fontFamily: 'Itim',
            fontSize: 33,
          ),
        ),
      ),
    );
  }
}

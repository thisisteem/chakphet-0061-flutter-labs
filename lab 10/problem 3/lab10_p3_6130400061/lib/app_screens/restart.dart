import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  const Restart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text('Restart'),
            onPressed: () => Navigator.pushNamed(context, '/'),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello World',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32
        ),),
      ),
    );
  }
}
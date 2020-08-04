import 'package:flutter/material.dart';
import 'package:myapp/Pages/buffers/buffer2.dart';

void main() => runApp(Quizz());

class Quizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quizz",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Splashscreen(),
    );
  }
}

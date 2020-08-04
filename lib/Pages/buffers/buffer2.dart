import 'dart:async';
import 'package:myapp/Pages/buffers/buffer3.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Homepage(), 
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: Text(
          "QUizzzz",
          style: TextStyle(
            fontSize: 50.0, 
            color: Colors.white
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Widgets/ListD.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Listb(), 
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

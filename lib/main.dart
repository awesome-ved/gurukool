import 'package:flutter/material.dart';
import 'package:gurukool/Widgets/bbnav.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBarNavigationPatternExample() ,
    );
  }
}
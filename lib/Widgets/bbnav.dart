import 'package:flutter/material.dart';
import 'package:gurukool/Pages/Activities.dart';
import 'package:gurukool/Pages/Dashboard.dart';
import 'package:gurukool/Pages/Profile.dart';
import 'package:gurukool/Widgets/bartitem.dart';

class BottomBarNavigationPatternExample extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text:"Dashboard", 
      iconData: Icons.dashboard, 
      color: Colors.indigo,
      page: App()
    ),
    BarItem(
      text:"Notification", 
      iconData: Icons.notifications, 
      color: Colors.teal,
      page: Activities()
    ),
    BarItem(
      text:"Profile", 
      iconData: Icons.person_outline, 
      color: Colors.yellow.shade900,
      page: Profile()
    ),    
  ];
  @override
  _BottomBarNavigationPatternExampleState createState() => _BottomBarNavigationPatternExampleState();
}

class _BottomBarNavigationPatternExampleState extends State<BottomBarNavigationPatternExample> {
  int selectedBarIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.bounceInOut,
        child: Scaffold(
          body: widget.barItems[selectedBarIndex].page
        )
      ),
      backgroundColor: Colors.transparent,
      bottomNavigationBar: AnimatedBottomBar(
        barItems:widget.barItems,
        animationDuration: const Duration(milliseconds: 1000),
        size: 400,
        size2: 600,
        onBarTap: (index){
          setState((){
            selectedBarIndex = index;
          });
        }
      ),
    );
  }
}
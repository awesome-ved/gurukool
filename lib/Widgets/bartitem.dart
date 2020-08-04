import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  final List<BarItem> barItems;
  final Duration animationDuration;
  final double size;
  final double size2;
  final Function onBarTap;

  AnimatedBottomBar({this.size2, this.onBarTap, this.size, this.barItems, this.animationDuration= const Duration(milliseconds: 500) });
  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> with TickerProviderStateMixin {
  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child:InkWell(
        child: Padding(
          padding: EdgeInsets.only(bottom: widget.size2*0.021, top:widget.size2*0.021, left:widget.size*0.024, right:widget.size*0.024),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _buildBarItems(),
          )
        ),
      )
    );
  }
  List<Widget>_buildBarItems(){
    List<Widget>_barItems= List();
    for (int i=0;i<widget.barItems.length;i++){
      bool isSelected = selectedBarIndex == i;
      BarItem item = widget.barItems[i];
      _barItems.add(InkWell(
        splashColor: Colors.transparent,
        onTap: (){
          setState(() {
            selectedBarIndex=i;
            widget.onBarTap(
              selectedBarIndex
            );
          });
        },
          child: AnimatedContainer(
            padding: EdgeInsets.symmetric(horizontal:widget.size*0.04, vertical:widget.size*0.015),
            duration: widget.animationDuration,
            decoration:BoxDecoration(
              color: isSelected ? item.color.withOpacity(0.3): Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(widget.size))
            ),
            child:Row(
              children: <Widget>[
                Icon(
                  item.iconData, 
                  color: isSelected ? item.color : Colors.black,
                  size: widget.size*0.07,
                ),
                AnimatedSize(
                  duration: widget.animationDuration,
                  vsync: this,
                  child:Text(
                    isSelected ? item.text: "",
                    style: TextStyle(
                      color: item.color, 
                      fontWeight: FontWeight.w600,
                      fontSize: widget.size*0.05
                    ),
                  ),
                )
                
              ],
            )
          )
        )
      );
    }
    return _barItems;
  }
}

class BarItem{
  String text;
  IconData iconData;
  Color color;
  Widget page;

  BarItem({this.page, this.text, this.iconData, this.color});
}
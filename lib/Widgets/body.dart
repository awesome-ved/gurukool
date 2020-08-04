import 'package:flutter/material.dart';
void main() => runApp(Body());

class Body extends StatefulWidget
{
  final Decoration contDec;
  final Color bcolor;
  final List<Widget> btchildren;
  final SliverChildDelegate scld;
  final Widget bimage;
  final double appbarh;
  Body({Key key, this.appbarh, this.bimage, this.contDec, this.bcolor, this.btchildren, this.scld }) :super(key: key);
  _BodyState createState() => _BodyState();
}
class _BodyState extends State<Body>{
  @override 
  Widget build( BuildContext context){
    final data2 = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: widget.contDec ?? BoxDecoration(
          color: Colors.white
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating:true,
              expandedHeight: widget.appbarh ?? 230,
              backgroundColor: widget.bcolor ?? Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                title: Title(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widget.btchildren,
                  ) ,
                ),
                titlePadding: EdgeInsets.symmetric(
                  horizontal:data2*0.02
                ),
                background: widget.bimage,
              ),
              
            ),
            SliverList(
              delegate: widget.scld, 
            ),
            
          ],
        ),
      )
    );
  }
}
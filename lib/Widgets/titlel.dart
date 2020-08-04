import 'package:flutter/material.dart';
class Titlel extends StatefulWidget {
  final String text;
  final String fontt;
  final double fsize;
  final double pdata;
  final Color fontct;
  final int maxlines;
  Titlel({Key key,this.maxlines, this.fontct, this.pdata, this.fsize, this.fontt, this.text}) : super(key: key);
  _TitlelState createState() => _TitlelState();
}
class _TitlelState extends State<Titlel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: widget.pdata ?? 30, vertical: widget.pdata ?? 10),
        child: Text(
          widget.text ?? "",
          textAlign: TextAlign.left,
          maxLines: widget.maxlines,
          style: TextStyle(
            color: widget.fontct ?? Colors.black,
            fontSize: widget.fsize ?? 35,
            fontFamily: widget.fontt
            //fontWeight: FontWeight.bold  
          ),
        )
      )
    );
  }
}
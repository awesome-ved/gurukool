import 'package:flutter/material.dart';

class Notificationpane extends StatefulWidget {
  final String ntext;
  final String ntitle;
  final String nimage;

  Notificationpane({Key key,this.nimage, this.ntitle, this.ntext}) : super(key: key);
  _NotificationpaneState createState() => _NotificationpaneState();
}

class _NotificationpaneState extends State<Notificationpane> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 6, left: 12.5, top: 15, right: 7.5),
        child: InkWell(
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            elevation: 30.0,
            child: Container(
              width: 300,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical:20),
                    child: Text(
                      widget.ntitle,
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: "OpenSans",
                        
                      ),
                    ),
                  ),
                  Container(
                      height: 150,
                      child: Image.asset(widget.nimage ?? "assets/img/Bell.png")),
                  Container(
                    padding: EdgeInsets.only(bottom: 22, top: 5, left: 22, right: 22),
                    child: Text(widget.ntext,
                        maxLines: 2,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: "OpenSans",
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

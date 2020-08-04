import 'package:flutter/material.dart';
import 'package:myapp/Widgets/Container2.dart';
import 'package:myapp/Widgets/body.dart';
import 'package:myapp/Widgets/titlel.dart';

void main() => runApp(Profile());

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  Widget customtitle(String titlex, double paddata) {
    return Ccontainer2(
      child:Padding(
        padding: EdgeInsets.only(top: 30, left: 35),
        child: Titlel(
          text:titlex,
          fontt: "PlayfairDisplay",
          fsize: 30,
          pdata: paddata*0,
        )
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size.width;
    final data2 = MediaQuery.of(context).size.height;
    return Body(
        contDec: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromRGBO(255, 19, 104, 1),
              Color.fromRGBO(255, 181, 23, 1),
              Color.fromRGBO(255, 189, 19, 1)
            ])),
        btchildren: [
          Text(
            ("Ved"),
            style: TextStyle(
              color: Colors.white,
              fontFamily: "BenchNine",
              fontSize: 44,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        appbarh: data2 * 0.40,
        scld: SliverChildListDelegate(
          [
            Ccontainer2(
              cheight: 800,
              ccolor: Colors.white,
              cedge: BorderRadius.vertical(top: Radius.circular(45)),
              child: ListView(
                children: [
                  customtitle("Profile", data),
                  customtitle("Grades", data),
                  customtitle("Files", data),
                  customtitle("Help", data),
                  customtitle("Licences", data)
                ]
              )
            )
          ],
        )
      );
  }
}
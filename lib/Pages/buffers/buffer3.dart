import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Pages/buffers/buffer4.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> images = [
    "assets/img/py.png",
    "assets/img/java.png",
    "assets/img/js.png",
    "assets/img/cpp.png",
    "assets/img/linux.png"
  ];
  List<String> des = [
    "Python is one of the most popular and fastest programming language since half a decade.\nIf You think you have learnt it.. \nJust test yourself !!",
    "Java has always been one of the best choices for Enterprise World. If you think you have learn the Language...\nJust Test Yourself !!",
    "Javascript is one of the most Popular programming language supporting the Web.\nIt has a wide range of Libraries making it Very Powerful !",
    "C++, being a statically typed programming language is very powerful and Fast.\nit's DMA feature makes it more useful. !",
    "Linux is a OPEN SOURCE Operating System which powers many Servers and Workstation.\nIt is also a top Priority in Developement Work !",
  ];

  Widget customcard(String langname, String images, String des) {
    return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => getjson()));
      },
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        elevation: 10.0,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  elevation: 5.0,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: ClipOval(
                      child: Image.asset(images),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  langname,
                  style: TextStyle(
                    fontSize: 56.0,
                    fontFamily: "BenchNine",
                    fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    maxLines: 5,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontFamily: "Opensans"),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Quizzzzz",
            style: TextStyle(
                color: Colors.black, fontFamily: "BenchNine", fontSize: 35),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.all(10.0)),
            customcard("Python", images[0], des[0]),
            customcard("Java", images[1], des[1]),
            customcard("JavaScript", images[2], des[2]),
            customcard("C++", images[3], des[3]),
            customcard("Linux", images[4], des[4]),
          ],
        ));
  }
}

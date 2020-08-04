import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Pages/resultpage.dart';

// ignore: camel_case_types
class getjson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString("assets/files/python.json"),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text("Loading"),
            ),
          );
        } else {
          return quizpage(mydata: mydata);
        }
      },
    );
  }
}
// ignore: must_be_immutable, camel_case_types
class quizpage extends StatefulWidget {
  var mydata;
  quizpage({Key key, @required this.mydata}) : super(key: key);
  @override
  _quizpageState createState() => _quizpageState(mydata);
}

// ignore: camel_case_types
class _quizpageState extends State<quizpage> {
  var mydata;
  _quizpageState(this.mydata);

  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  String showtimer = "30";

  Map<String, Color> btncolor = {
    "a": Color.fromARGB(255, 236, 212, 68),
    "b": Color.fromARGB(255, 236, 212, 68),
    "c": Color.fromARGB(255, 236, 212, 68),
    "d": Color.fromARGB(255, 236, 212, 68),
  };

  @override
  void initState() {
    starttimer();
    super.initState();
  }

  void starttimer() async {
    int timer = mydata[3]["time"];
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    setState(() {
      if (i < 10) {
        i++;
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => resultpage(marks: marks))
        );
      }
      btncolor["a"] = Color.fromARGB(255, 236, 212, 68);
      btncolor["b"] = Color.fromARGB(255, 236, 212, 68);
      btncolor["c"] = Color.fromARGB(255, 236, 212, 68);
      btncolor["d"] = Color.fromARGB(255, 236, 212, 68);
    });
  }

  void checkanswer(String k) {
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      marks = marks + 5;
      colortoshow = right;
    } else {
      colortoshow = wrong;
    }
    setState(() {
      btncolor[k] = colortoshow;
    });

    Timer(Duration(milliseconds: 500), nextquestion);
  }

  void forward() {}

  Widget choiceButton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        elevation: 5,
        onPressed: () => checkanswer(k),
        child: AutoSizeText(
          mydata[1][i.toString()][k],
          style: TextStyle(color: Colors.black),
          maxLines: 1,
        ),
        //color: Color.fromARGB(255, 235, 59, 136),
        color: btncolor[k],
        minWidth: 400,
        height: 60.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        highlightColor: Colors.redAccent[700],
        splashColor: Colors.redAccent[700],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //final data = MediaQuery.of(context).size.width;
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return WillPopScope(
        onWillPop: () {
          return showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Quizstar"),
              content:
                  Text("You Can't go back at this stage :-)) hahahahaha"),
              actions: [
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OLLLAAA"),
                )
              ],
            )
          );
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(right: 15.0, left: 15.0, top: 75),
                  alignment: Alignment.bottomLeft,
                  child: AutoSizeText(
                    mydata[0][i.toString()],
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "OpenSans",
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      choiceButton('a'),
                      choiceButton('b'),
                      choiceButton('c'),
                      choiceButton('d'),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 41),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Center(
                              child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color.fromARGB(255, 110, 37, 148),
                        ),
                      )
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 120,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 41),
                        child: Material(
                          child: Center(
                            child: Text(
                              showtimer,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontFamily: "BenchNine"),
                          ),
                        ),
                        elevation: 15.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color.fromARGB(255, 110, 37, 148),
                      ),
                    )
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: 60,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 41),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )
                        ),
                        elevation: 15.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        color: Color.fromARGB(255, 110, 37, 148),
                      ),  
                    )
                  ),
                ]
              )
            ),
          ],
        ),
      )
    );
  }
}

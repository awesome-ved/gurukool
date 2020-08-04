import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Widgets/ListD.dart';
import 'package:myapp/Widgets/body.dart';
import 'package:myapp/Widgets/titlel.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Future<List<Subject>> _getSubject() async {
    try {
      {
        var data = await rootBundle.loadString("assets/files/test.json");
        var jsonData = json.decode(data);
        List<Subject> subjects = [];
        for (var s in jsonData) {
          Subject subject =
              Subject(s["index"], s["name"], s["page"]);
          subjects.add(subject);
        }
        return subjects;
      }
    } catch (e) {
      return null;
    }
  }

  Widget customcard(String titlex) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        Row(children: [Titlel(text: titlex)]),
        Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        Container(
            height: 330,
            child: Listb(
              jsdata: _getSubject(),
            )
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size.width;
    final data2 = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var ratio = data2 / data;
    return Body(
      bcolor: Colors.white,
      btchildren: [
        Text(("Hello,"),
            style: TextStyle(
              color: Colors.black,
            )),
        Text(
          ("VED"),
          style: TextStyle(
            color: Colors.black,
            fontFamily: "PlayfairDisplay",
            fontSize: 43,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      scld: SliverChildListDelegate(
        [
          customcard("Videos"),
          customcard("Quiz"),
          customcard("Assignments"),
          //customcard("", data),
        ],
      ),
    );
  }
}

class Subject {
  final int index;
  final String name;
  final String page;
  Subject(this.index, this.name, this.page);
}

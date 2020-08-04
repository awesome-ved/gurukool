import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Widgets/ListN.dart';
import 'package:myapp/Widgets/titlel.dart';

void main() => runApp(Notification());

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Activities(),
    );
  }
}

class Activities extends StatelessWidget {
  Future<List<Notime>> _getNotime() async {
    try {
      {
        var data = await rootBundle.loadString("assets/files/notification.json");
        var jsonData = json.decode(data);
        List<Notime> notimes = [];
        for (var s in jsonData) {
          Notime notime =
              Notime(s["index"], s["ntitlex"], s["ntextx"], s["nimagex"]);
          notimes.add(notime);
        }
        return notimes;
      }
    } catch (e) {
      print(e);
      List notimes = [0, "Ved","is mad"];
      return notimes;
    }
  }

  Widget customcard(String titlex) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        Row(children: [Titlel(text: titlex, fontct: Colors.white)]),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
            height: 310,
            child: ListN(
              jsdata: _getNotime(),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromRGBO(0, 193, 182, 1),
              Color.fromRGBO(0, 193, 182, 1),
              Color.fromRGBO(43, 54, 147, 1),
              Color.fromRGBO(117, 22, 151, 1)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 150,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Notifications",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PlayfairDisplay",
                        fontSize: 43,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                    )
                  ],
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(0, 255, 255, 255),
            elevation: 0.0,
          ),
          body: ListView(
            children: [
              customcard("Achievements"),
              customcard("New Videos"),
              customcard("New Quizes")
            ],
          ),
        ));
  }
}

class Notime {
  final int index;
  final String ntitlex;
  final String ntextx;
  final String nimagex;
  Notime(this.index, this.ntitlex, this.ntextx, this.nimagex);
}

import 'dart:convert';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Widgets/Notificationpane.dart';

// ignore: camel_case_types
class ntime extends StatefulWidget {
  @override
  _ntimeState createState() => _ntimeState();
}

// ignore: camel_case_types
class _ntimeState extends State<ntime> {
  Future<List<Notime>> _getNotime() async {
    try {
      var data = await rootBundle.loadString("assets/files/notification.json");
      var jsonData = await json.decode(data);
      List<Notime> notimes = [];
      for (var s in jsonData) {
        Notime notime = Notime(s["index"], s["ntitlex"], s["ntextx"]);
        notimes.add(notime);
      }
      if (notimes.length == null) {
        //RenderErrorBox.backgroundColor = Colors.transparent;
        Notime notime = Notime(0, "Ved", "Ved");
        notimes.add(notime);
        return notimes = [];
      } else {
        RenderErrorBox.backgroundColor = Colors.transparent;
        RenderErrorBox.textStyle = ui.TextStyle(color: Colors.transparent);
        return notimes;
      }
    } catch (e) {
      List<Notime> notimes = [];
      Notime notime = Notime(0, "Ved", "Ved");
      notimes.add(notime);
      return notimes = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
      future: _getNotime(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView.builder(
          itemCount: snapshot.data.length ?? 1,
          itemBuilder: (BuildContext context, int index) {
            return Notificationpane(
              ntitle: snapshot.data[index].ntitlex ?? Text("Loading"),
              ntext: snapshot.data[index].ntextx ?? Text("Loading"),
            );
          },
        );
      },
    ));
  }
}

class Notime {
  final int index;
  final String ntitlex;
  final String ntextx;
  Notime(this.index, this.ntitlex, this.ntextx);
}

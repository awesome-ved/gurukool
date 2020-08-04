import 'package:flutter/material.dart';
import 'package:myapp/Widgets/Notificationpane.dart';

class ListN extends StatefulWidget {
  final Future<dynamic> jsdata;
  ListN({Key key, this.jsdata}) : super(key: key);
  _ListNState createState() => _ListNState();
}

class _ListNState extends State<ListN> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: widget.jsdata,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          try {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Notificationpane(
                  ntitle: snapshot.data[index].ntitlex,
                  ntext: snapshot.data[index].ntextx,
                  nimage: snapshot.data[index].nimagex,
                );
              },
            );
          } catch (e) {
            print("Error is $e");
            return Container(child: Text("Sorry"));
          }
        });
  }
}

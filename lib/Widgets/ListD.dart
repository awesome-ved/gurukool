
import 'package:flutter/material.dart';
import 'package:myapp/Pages/buffers/buffer7.dart';
import 'package:myapp/Widgets/Container.dart';

class Listb extends StatefulWidget {
  final Future<dynamic> jsdata;
  Listb({Key key, this.jsdata}) : super(key: key);
  _ListbState createState() => _ListbState();
}

class _ListbState extends State<Listb> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size.width;
    return FutureBuilder(
        future: widget.jsdata,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          try {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                if (snapshot.data.length == null) {
                  return Container(
                    color: Colors.white,
                    child: Center(child: Text("Loading")),
                  );
                } else {
                  return Container(
                    //color: Colors.black12,
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: data * 0.00005),
                        child: Material(
                          elevation: 15.0,
                          color: Colors.transparent,
                          child: Ccontainer(
                            cwidth: 370,
                            cheight: 250,
                            cedge: BorderRadius.all(Radius.circular(25)),
                            cimage: "assets/img/green-leaves-1072179.jpg",
                            contap: (context)=> MyHomePage(page: snapshot.data[index].page )
                          ),
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                        child: Container(
                          width: 370,
                          child: Container(
                            child: Text(
                              snapshot.data[index].name,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "PlayfairDisplay"
                              ),
                            ),
                          ),
                        )
                      ),
                    ]
                  )
                );
              }
            },
          );
        } catch (e) {
          print(e);
          return Container(child: Text("Loading...."));
        }
      }
    );
  }
}

/*Padding(
              padding: EdgeInsets.only(bottom: data * 0.01,left: data * 0.05,top: data * 0.05,right: data * 0.05),
              child: InkWell(
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(data * 0.05)),
                  elevation: 30.0,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(bottom: data * 0.03,left: data * 0.05,top: data * 0.05,right: data * 0.05),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data[index].ntitlex,
                                    maxLines: 2,
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ]
                              )
                            ),
                        Container(
                          padding: EdgeInsets.only(bottom: data * 0.05,top: data * 0.001,left: data * 0.05,right: data * 0.05),
                          child: Text(snapshot.data[index].ntextx,
                              maxLines: 2,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: "PlayfairDisplay",
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            );*/


/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Notificationpane extends StatefulWidget {
  _NotificationpaneState createState() => _NotificationpaneState();
}

class _NotificationpaneState extends State<Notificationpane> {
  Future<List<Notifyme>> _getNotifyme() async {
    var data = await rootBundle.loadString("assets/files/notification.json");
    var jsonData = json.decode(data);
    List<Notifyme> notifymes = [];
    for (var s in jsonData) {
      Notifyme notifyme = Notifyme(s["index"], s["ntitlex"], s["ntext"]);
      notifymes.add(notifyme);
    }
    print(notifymes.length);
    return notifymes;
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: _getNotifyme(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return ListView.builder(
          itemCount:snapshot.data.length,
          itemBuilder: (BuildContext context, int index){
            return 
          }
        );
      }
    );
  }
}

class Notifyme {
  final int index;
  final String ntitlex;
  final String ntextx;
  Notifyme(this.index, this.ntitlex, this.ntextx);
}
*/
/*Padding(padding: EdgeInsets.symmetric(vertical: data * 0.03)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dlkjf  jlkjj lj lkjl lkj lkjlkj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data2*0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfj lksd;fk odsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),
          Notificationpane(
            ntitle: "VED IS AWESOME",
            ntext:
                "uhjoijoikp skfadlfj dfjsdjfljdsf odfjodsfjdlfjdjfo jfod sdfjldsfldsjfl dfj;sldajfldsj ojfo;sdjfo;di odfjdl fodjff odjf odsfjd d fsdfdlf io ",
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: data * 0.003)),*/
          /*Body(
      contDec: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromRGBO(0, 193, 182, 1),
            Color.fromRGBO(0, 193, 182, 1),
            Color.fromRGBO(43, 54, 147, 1),
            Color.fromRGBO(117, 22, 151, 1)
          ])),
      bcolor: Color.fromARGB(0, 0, 0, 0),
      btchildren: [
        Text(
          ("Activities"),
          style: TextStyle(
            color: Colors.white,
            fontFamily: "BenchNine",
            fontSize: data * 0.1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      scld: SliverChildListDelegate(
        [
          Expanded(
            child: FutureBuilder(
            future: _getNotifyme(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Notificationpane(
                      ntitle: snapshot.data[index].ntitlex,
                      ntext: snapshot.data[index].ntextx
                    );
                  },
                );
              } 
            ),
          )          
        ],
      ),
    );*/

    /*Container(
                      height: ratio*350,
                      padding: EdgeInsets.symmetric(horizontal: data * 0.03, vertical: data2 * 0.01),
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: data * 0.03,left: data * 0.05,top: data * 0.05,right: data * 0.05),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data[index].ntitlex,
                                      maxLines: 2,
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontFamily: "OpenSans",
                                      ),
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: data * 0.05,top: data * 0.001, left: data * 0.05,right: data * 0.05),
                                child: Text(snapshot.data[index].ntextx,
                                  maxLines: 2,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: "PlayfairDisplay",
                                  )
                                ),
                              )
                            ],
                        )
                      ),
                    )
                  );*/
  /*FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/files/notification.json"),
            builder: (context, snapshot) {
              List mydata = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemCount: mydata.length,
                itemBuilder: (BuildContext context, int index) {
                  if (mydata == null) {
                    return Center(
                      child: Container(
                        child: Text("LOADDING....."),
                      ),
                    );
                  } else {
                    return Container(
                        height: ratio * 350,
                        padding: EdgeInsets.symmetric(
                            horizontal: data * 0.03, vertical: data2 * 0.01),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Container(
                              child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(
                                      bottom: data * 0.03,
                                      left: data * 0.05,
                                      top: data * 0.05,
                                      right: data * 0.05),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          mydata[index]["ntitlex"],
                                          maxLines: 2,
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontFamily: "OpenSans",
                                          ),
                                        ),
                                      ])),
                              Container(
                                padding: EdgeInsets.only(
                                    bottom: data * 0.05,
                                    top: data * 0.001,
                                    left: data * 0.05,
                                    right: data * 0.05),
                                child: Text(mydata[index]["ntextx"],
                                    maxLines: 2,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: "PlayfairDisplay",
                                    )),
                              )
                            ],
                          )),
                        ));
                  }
                },
              );
            },
          ),*/
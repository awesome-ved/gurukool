/*import 'dart:convert';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class getjson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString("assets/files/notification.json"),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text("Loading"),
            ),
          );
        } else {
          return Listn(mydata: mydata);
        }
      },
    );
  }
}
*/

/*Future<List<Notifyme>> _getNotifyme() async {
    var data = await rootBundle.loadString("assets/files/notification.json");
    var jsonData = json.decode(data);
    List<Notifyme> notifymes = [];
    for (var s in jsonData) {
      Notifyme notifyme = Notifyme(s["index"], s["ntitlex"], s["ntext"]);
      notifymes.add(notifyme);
    }
    print(notifymes.length);
    return notifymes;
  }*/





  
/*
Activities
import 'package:flutter/material.dart';
import 'package:myapp/Widgets/notifyme.dart';
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
  
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final data = MediaQuery.of(context).size.width;

    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                
                end: Alignment.bottomLeft,
                colors: [
              Color.fromRGBO(0, 193, 182, 0),
              Color.fromRGBO(0, 193, 182, 1),
              Color.fromRGBO(43, 54, 147, 1),
              Color.fromRGBO(117, 22, 151, 1)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 230,
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
          body: ntime(),
          
          
        )
      );
  }
}
class Notifyme {
  final int index;
  final String ntitlex;
  final String ntextx;
  Notifyme(this.index, this.ntitlex, this.ntextx);
}*/


/*import 'dart:convert';
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
*/

/*
_space,
                  _text('Title', '${_videoMetaData.title}'),
                  _space,
                  
                  Row(
                    children: [
                      _text(
                        'Playback Quality',
                        '${_controller.value.playbackQuality}',
                      ),
                      const Spacer(),
                      _text(
                        'Playback Rate',
                        '${_controller.value.playbackRate}x  ',
                      ),
                    ],
                  ),
                  _space,
                  IconButton(
                    icon: Icon(
                      _controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                    ),
                    onPressed: _isPlayerReady
                      ? () {
                        _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                        setState(() {});
                      }
                    : null,
                  ),
*/
/*YoutubePlayer(
  controller: _controller,
  bottomActions: [
    CurrentPosition(),
    ProgressBar(isExpanded: true),
  ],
),

*/
/*

YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.redAccent,
        topActions: <Widget>[
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              _controller.metadata.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
        onReady: () {
          _isPlayerReady = true;
        },
      ),
      builder: (context, player) => 
*/

/*Padding(
  padding: const EdgeInsets.all(8.0),
  child:Material(
    color: Colors.transparent,
    //elevation: 20,
    shadowColor: Color.fromARGB(100, 252, 209, 59),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child:Container(
            padding: EdgeInsets.symmetric(vertical:15, horizontal: 10),
            width: 500,
            child: AutoSizeText(
              "${_videoMetaData.title}",
              maxLines: 2,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2.0, color: Color.fromARGB(255, 252, 209, 59)),
              /*boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 252, 209, 59),
                  offset: Offset(5, 10) ,
                  blurRadius: 20.0,
                )
              ]*/
            ),
          )
        ),
        Padding(padding: EdgeInsets.all(5)),
        Container(
          padding: EdgeInsets.symmetric(vertical:10, horizontal: 5),
          width: 70,
          child: IconButton(
            icon: Icon(
              Icons.ac_unit
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2.0, color: Color.fromARGB(255, 252, 59, 136)),
            /*boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 252, 209, 59),
                offset: Offset(5, 10) ,
                blurRadius: 20.0,
              )
            ]*/
          ),
          
        )
        
      ],
    ),
  )
),*/
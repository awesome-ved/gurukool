import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Widgets/Container2.dart';
import 'package:myapp/Widgets/titlel.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(YoutubePlayerDemoApp());
}

class YoutubePlayerDemoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Videos',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: const AppBarTheme(
          color: Colors.yellowAccent,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20.0,
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.transparent,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

/// Homepage
class MyHomePage extends StatefulWidget{
  final String page;
  MyHomePage({Key key, this.page}): super(key:key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  YoutubePlayerController _controller;
  // ignore: unused_field
  TextEditingController _idController;
  // ignore: unused_field
  TextEditingController _seekToController;

  // ignore: unused_field
  PlayerState _playerState;
  // ignore: unused_field
  YoutubeMetaData _videoMetaData;
  bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.page,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Colors.white,//Color.fromARGB(255, 226, 50, 95),
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child:Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,//Color.fromARGB(255, 255, 222, 40),
                        offset: Offset(10, 10),
                        blurRadius: 20,
                      )
                    ]),
                child: YoutubePlayer(
                  controller: _controller,

                  aspectRatio: 16/9,                
                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(isExpanded: true),
                    FullScreenButton(
                      controller: _controller,
                      color: Color.fromARGB(255, 255, 222, 40),
                    ),
                  ],
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
                ),
              ),
            )
          ),
          Expanded(
            flex: 1,            
            child:Ccontainer2(
              cheight: 79.0,
              cwidth: data*0.9,
              ccolor: Colors.white,
              child: Padding(
                padding:EdgeInsets.symmetric(vertical:10.0),
                child:Titlel(text:_controller.metadata.title, fsize:25, maxlines: 1, fontct: Colors.white,),
              ),
              scolor: Colors.grey,//Color.fromARGB(255, 226, 50, 95),//Color.fromARGB(255, 255, 222, 40),
              coffset: Offset(1,5),
              cblurradius: 55.0,
              cedge: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          Expanded(
            flex: 7,
            child:Container(
              height: 100,
              color: Colors.transparent,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(                  
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey,//Color.fromARGB(255, 255, 222, 40),
                          offset: Offset(5, 10),
                          blurRadius: 40,
                        )
                      ]
                    ),
                    child: IconButton(  
                      color: Colors.yellow,
                      iconSize:40,                             
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
                  )
                ]
              )
            )
          )
        ],
      ),
    );
  }

  // ignore: unused_element
  Widget get _space => const SizedBox(height: 100);
}

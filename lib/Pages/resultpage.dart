import 'package:flutter/material.dart';
import 'package:myapp/Pages/buffers/buffer3.dart';

// ignore: camel_case_types,must_be_immutable
class resultpage extends StatefulWidget {
  int marks;
  resultpage({Key key , @required this.marks}) : super(key : key);
  @override
  _resultpageState createState() => _resultpageState(marks);
}
// ignore: camel_case_types
class _resultpageState extends State<resultpage> {

  List<String> images = [
    "assets/img/success.png",
    "assets/img/good.png",
    "assets/img/bad.png",
  ];

  String message;
  String image;

  @override
  void initState(){
    if(marks < 20){
      image = images[2];
      message = "You Should Try Hard..\n" + "You Scored $marks";
    }else if(marks < 35){
      image = images[1];
      message = "You Can Do Better..\n" + "You Scored $marks";
    }else{
      image = images[0];
      message = "You Did Very Well..\n" + "You Scored $marks";
    }
    super.initState();
  }

  int marks;
  
  _resultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Result",
          
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Material(
              child:Container(
                color: Colors.white,
              )
            ),
          )
          ,
          Expanded(
            flex: 10,
            child: Material(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        color: Colors.white,
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image.asset(image),
                        ),
                      ),
                    ),
                     Center(
                      child: Text(
                        message,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:45.0,
                          fontFamily: "BenchNine",
                          
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),            
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    color: Colors.white,
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ));
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "OpenSans"
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                    splashColor: Colors.indigoAccent,
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
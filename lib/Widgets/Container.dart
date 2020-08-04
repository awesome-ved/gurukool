import 'package:flutter/material.dart';

class Ccontainer extends StatefulWidget
{
  final Widget child;
  final double cheight;
  final double cwidth;
  final Offset coffset;
  final BorderRadiusGeometry cedge;
  final Color ccolor;
  final Color scolor;
  final Widget Function(BuildContext) contap;
  final double cblurradius;
  final String cimage;


  Ccontainer({Key key, this.cimage, this.contap, this.cblurradius, this.scolor, this.coffset, this.child, this.ccolor, this.cedge, this.cheight,this.cwidth }) :super(key: key);

  _CcontainerState createState() => _CcontainerState();
}
class _CcontainerState extends State<Ccontainer>{
  @override 
  Widget build(BuildContext context){
    return 
    InkWell(
      child:Container(
        child: widget.child,
        height: widget.cheight,
        width: widget.cwidth ?? 300.0,
        decoration: BoxDecoration(
          color: widget.ccolor ?? Color.fromARGB(0, 0 , 0, 0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(widget.cimage ?? "assets/img/green-leaves-1072179.jpg")
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: widget.scolor ?? Color.fromARGB(0, 0 , 0, 0),
              offset: widget.coffset ?? Offset(0, 0) ,
              blurRadius: widget.cblurradius ?? 10.0,
            )
          ],
          borderRadius: widget.cedge
        ), 
      ),
      onTap: (){
        Navigator.push(
          context, MaterialPageRoute(builder: widget.contap)
        );
      },
    );
  }
}
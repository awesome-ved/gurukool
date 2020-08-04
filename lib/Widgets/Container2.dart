import 'package:flutter/material.dart';

class Ccontainer2 extends StatefulWidget
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


  Ccontainer2({Key key, this.contap, this.cblurradius, this.scolor, this.coffset, this.child, this.ccolor, this.cedge, this.cheight,this.cwidth }) :super(key: key);

  _Ccontainer2State createState() => _Ccontainer2State();
}
class _Ccontainer2State extends State<Ccontainer2>{
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
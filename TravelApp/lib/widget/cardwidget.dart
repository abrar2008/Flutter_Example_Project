
import 'package:flutter/material.dart';

Widget cardShape (String imgurl , String title , String location){
  return Hero(tag: 'box-&{location}', child: Material(
    color: Colors.transparent,
    child: ClipPath(
     clipper: Myclipper(),
      child: Container(
      width: 220,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imgurl),

          )
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800
                ),),Text(location,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800
                ),),

            ],
          ),
        ),
      ),
    ),
  ));

}

class Myclipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = Path();
var round = 40.0;


    path.moveTo(round* 2, round* 2);
    path.quadraticBezierTo(0, round*3, 0, round * 4);
    path.lineTo(0, size.height- round);
    path.quadraticBezierTo(0, size.height, round, size.height);
    path.lineTo(size.width - round, size.height);
    path.quadraticBezierTo(size.width, size.height , size.width, size.height - round);
    path.lineTo(size.width, round * 1.5);
path.quadraticBezierTo(size.width, 0, round * 2, round *2);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
  
}
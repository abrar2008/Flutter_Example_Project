import 'dart:async';
import "package:sizer/sizer.dart";
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/routes.dart';
import 'package:internship/sign_in.dart';
class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  startTime() async {
  var duration = new Duration(seconds: 10);
  return new Timer(duration, route);
}
route() {
    { Navigator.pushNamed(context, MyRoute.termsRoute);}
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Center(
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: new BoxDecoration(
                      color: Color(0xFFF7F8F9),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Text("Set your location",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(color:Color(0xFF3E4958),
                        decoration:TextDecoration.none ,
                        fontSize:18,
                        letterSpacing: .5),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center
              ),
              SizedBox(height: 10.0,),
              Text('Enable location sharing so \nthat your driver can see \nwhere you are',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(color:Color(0xFF3E4958),
                        decoration:TextDecoration.none ,
                        fontSize:13,
                        letterSpacing: .5),
                  ),
                  textAlign: TextAlign.center
              ),
              SizedBox(height: 35.0,),
              CircularProgressIndicator(),
              SizedBox(height: 35.0,),
              Icon(
                Icons.more_horiz_outlined,
                color: Color(0xFF1152fd),
                size:50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

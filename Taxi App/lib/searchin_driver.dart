import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
class search extends StatefulWidget {
  const search({ Key? key }) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {

    startTime() async {
  var duration = new Duration(seconds: 10);
  return new Timer(duration, route);
}
route() {
    { Navigator.pushNamed(context, MyRoute.arriving_detailsRoute);}
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Card(
          shape: CircleBorder(),
          child: IconButton(icon: Icon(Icons.close),
            color: Colors.black,
            onPressed: () { Navigator.pushNamed(context, MyRoute.ride_optRoute);},
          ),
        ),
      
      ),

      extendBodyBehindAppBar: true,
      body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/search.PNG'),
                  fit: BoxFit.fill
              ),
              ),
             child: Align(
               alignment: Alignment.bottomCenter,
               child: Padding(
                 padding: const EdgeInsets.only(bottom: 25.0),
                 child: Text("Searching for a driver",
                 style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                 ),),
               )),
        
        ),
        
      
    );
  }
}
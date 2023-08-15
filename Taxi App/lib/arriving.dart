import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'menu.dart';
class arriving extends StatefulWidget {
  const arriving({Key? key}) : super(key: key);

  @override
  _arrivalState createState() => _arrivalState();
}

class _arrivalState extends State<arriving> {
   startTime() async {
  var duration = new Duration(seconds: 10);
  return new Timer(duration, route);
}
route() {
    { Navigator.pushNamed(context, MyRoute.arrivedRoute);}
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
          child: IconButton(icon: Icon(Icons.sort_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
        title: Text(
          "Arriving",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),

      extendBodyBehindAppBar: true,
      body: SlidingUpPanel(
        maxHeight: 200,
        minHeight: 200,
        //overflow: Overflow.visible,

        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),

        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/arriving.PNG'),
                  fit: BoxFit.fill
              ),
            )
        ),

        panel: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                    height: 5,
                    width: 35,
                    decoration:BoxDecoration(
                        color: Color(0xFFD5DDE0),
                        borderRadius: BorderRadius.all(Radius.circular(2))
                    )
                ),
              ),
            ),
            Container(
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:08,right:12),
                          child: Container(
                            color:Colors.white,
                            child:Padding(
                              padding: const EdgeInsets.only(left: 15,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [

                                      Text("Patrick", style: TextStyle(fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color:Color(0xFF3E4958),
                                      ),
                                      ),

                                      SizedBox(height: 12.0,),


                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(right:32),
                                    child: Column(
                                      crossAxisAlignment : CrossAxisAlignment.end ,
                                      children: [

                                        Container(
                                          width: 70,
                                          height: 20,
                                          //padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFD5DDE0),
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                            //border: Border.all(color: Colors.orangeAccent, width: 4)
                                          ),
                                          child: Center(child: Text("HS785K",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color:Color(0xFF3E4958),
                                            ),
                                          )),
                                        ),

                                        SizedBox(height: 10.0,),

                                        Text("Volkswagen Jetta", style: TextStyle(fontSize: 15,
                                            color:Colors.black
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //Center(
                            Container(
                              height: 50,
                              width: 230,
                              decoration: BoxDecoration(
                                  color: Color(0xFF1152fd), borderRadius: BorderRadius.circular(12)),
                              child: FlatButton(
                                onPressed: () {Navigator.pushNamed(context, MyRoute.chatemptyRoute); },
                                child: Text(
                                  'Contact driver',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,fontWeight:
                                  FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              child: Card(
                                elevation: 8,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child : IconButton(
                                    icon: new Icon(Icons.close_outlined,),
                                    onPressed: () {Navigator.pushNamed(context, MyRoute.cancelRoute);

                                    }),

                              ),
                            ),
                            //  ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: -55,
                      left: 0,
                      height:90,
                      width: 90,
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/patrick.PNG'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      )
                  ),

                ],

              ),
            ),
          ],
        ),
        // ),

      ),
      drawer: menu(),
    );
  } 
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'menu.dart';
class arrivingdet extends StatefulWidget {
  const arrivingdet({ Key? key }) : super(key: key);

  @override
  _arrivingdetState createState() => _arrivingdetState();
}

class _arrivingdetState extends State<arrivingdet> {
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
            onPressed: () {Navigator.pushNamed(context, MyRoute.arrivingRoute);},
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
        maxHeight: 400,
        minHeight: 400,
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
                      'assets/tipsamount.PNG'),
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
                          padding: const EdgeInsets.only(left:08,),
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
                        
                        
                        Container(
          

           decoration: BoxDecoration(
       
        border: Border.all(
            color: Color(0xFFe5e5e5), // Set border color
           ),   // Set border width
        borderRadius: BorderRadius.all(
            Radius.circular(10.0)), // Set rounded corner radius
        //boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
      ),
          
          //color: Colors.yellow,
         padding: EdgeInsets. only(left:25.0,right:25.0,top:10.0),
        margin: EdgeInsets.all(10),
          height: 140,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
            TimelineTile(
               alignment: TimelineAlign.manual,
               lineXY: 0.2,
               isFirst: true,

               beforeLineStyle: LineStyle(
               color: Colors.black,
               thickness: 1,
                   ),

               indicatorStyle: const IndicatorStyle(
               width: 7,
               color: Colors.blue,
               indicatorXY: 0.2,
               padding: EdgeInsets.only(bottom:6,right: 6),
                  ),

              startChild:Container(
                height:50,
               
                child: Text("11:24",style: TextStyle(fontSize: 12,color: Color(0xFF97ADB6)),),),
              endChild: Container(
                height:60,
                child: Wrap(
                children: [
                   Text("1, Thrale Street, London,\n SE19HW, UK",style: TextStyle(fontSize: 15,color: Color(0xFF3E4958)),)
                ],


              )) ,

              ),

             // SizedBox(height: 10,),


            TimelineTile(
               alignment: TimelineAlign.manual,
               lineXY: 0.2,
               isFirst: true,
               isLast: true,

               indicatorStyle: const IndicatorStyle(
               width: 7,
               color: Colors.blue,
               indicatorXY: 0.2,
               padding: EdgeInsets.only(bottom:6,right: 6),
                  ),

              startChild:Container(
                height:50,
                child: Text("11:38",style: TextStyle(fontSize: 12,color: Color(0xFF97ADB6)),),),
              endChild: Container(
                height: 60,
                child: Wrap(
                children: [
                  
                   Text("Ealing Broadway Shopping\nCentre, London, W55JY, UK",style: TextStyle(fontSize: 15,color: Color(0xFF3E4958)),)
                ],
                )
              ),
              ),
            ]
          ,),
        ),
                    SizedBox(height: 8.0,),
                      Container(
                      // color: Color(0xFFF7F8F9),
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0,right:8),
                          child: Card(
                            color: Color(0xFFF7F8F9),
                       shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child:Padding(
                              padding: const EdgeInsets.only(left: 15,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    
                                    height: 30.0,
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF7F8F9),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/card2.PNG'),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                  ],
                              ),
                            ),
                          ),
                        ),
                      ),

                         SizedBox(height: 15.0,),
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
                                    onPressed: () {Navigator.pushNamed(context, MyRoute.cancelRoute);}),

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
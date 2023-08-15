import 'package:flutter/material.dart';
import 'package:internship/menu.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class booking extends StatefulWidget {
  const booking({Key? key}) : super(key: key);

  @override
  _bookingState createState() => _bookingState();
}

class _bookingState extends State<booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Card(
            shape: CircleBorder(),
            child: IconButton(icon: Icon(Icons.notes_outlined,color: Colors.black,
            ),
              onPressed: () {},
            ),
          ),
        ),
        


        extendBodyBehindAppBar: true,
        body: SlidingUpPanel(
          maxHeight: 400,
          minHeight: 100,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          body: Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/booking.PNG'),
                        fit: BoxFit.fill
                    ),
                  )

              ),
              Padding(
                padding: const EdgeInsets.only(left: 100,top: 450),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/shooter.PNG'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    )
                ),
              ),
            ],
          ),

          panel: SingleChildScrollView(
            //child: Center(
              child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                            height: 5,
                            width: 35,
                            decoration:BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(2))
                            )
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 40.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Card(
                                  elevation: 8,
                                  shadowColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child:Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left:15),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            prefixIcon: InkWell(
                                              onTap: (){ Navigator.pushNamed(context, MyRoute.addressRoute);},
                                              child: Icon(Icons.search_rounded,
                                                color: Color(0xFF1152fd),
                                              ),
                                            ),
                                            border:
                                            InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: 24.0,),
                              Row(
                                children: [
                                  Icon(Icons.location_on,
                                    color: Colors.grey,),
                                  SizedBox(width: 12.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text(
                                        "King Cross Underground Statio...",
                                        style: TextStyle(
                                            fontSize: 13.0),),
                                      SizedBox(height: 4.0,),
                                      Text("New York", style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10.0
                                      ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              //margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                              Divider(
                                color: Colors.grey,
                                height: 6.0,
                              ),


                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Icon(Icons.location_on,
                                    color: Colors.grey,),
                                  SizedBox(width: 12.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text("83, Midwood St",
                                        style: TextStyle(
                                            fontSize: 13.0),),
                                      SizedBox(height: 4.0,),
                                      Text("New York", style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10.0),),
                                    ],
                                  ),
                                ],
                              ),


                            ]
                        )
                    )
                  ]
              )
          ),
        ),
        drawer: menu(),
    );
  }
}
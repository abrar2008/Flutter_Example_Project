import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'menu.dart';
class tipamount extends StatefulWidget {
  const tipamount({ Key? key }) : super(key: key);

  @override
  _tipamountState createState() => _tipamountState();
}

class _tipamountState extends State<tipamount> {
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
          "Tips Amount",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),

      extendBodyBehindAppBar: true,
      body: SlidingUpPanel(
        maxHeight: 300,
        minHeight: 300,
      

        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),

        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/ontrip.PNG'),
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
                    padding: const EdgeInsets.only(top:25,left: 15,right: 15),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Padding(
                            //padding: const EdgeInsets.only(left:08,right:12),
                              Container(
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
                                              color:Color(0xFF3E4958)
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  
                                  ],
                                  
                                ),



                                

                              ),
                            ),
                          
                          
                          
                          
                          
                          //),
                          
                          SizedBox(height: 10.0,),


                          Padding(
                            padding: const EdgeInsets.only(left:08,right:12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //Center(
                                Container(
                                  height: 40,
                                  width: 65,
                                  decoration: BoxDecoration(
                      color: Color(0xFF1152fd),
               borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.6),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
  ),
                                  
                                  child: FlatButton(
                                    onPressed: () { },
                                    child: Text(
                                      '0%',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,fontWeight:
                                      FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),


                                Container(
                                  height: 40,
                                  width: 65,
                                  decoration: BoxDecoration(
                      color: Colors.white,
               borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.6),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), 
      ),
    ],
  ),
                                  
                                  child: FlatButton(
                                    onPressed: () { },
                                    child: Text(
                                      '5%',
                                      style: TextStyle(
                                        color: Color(0xFF3E4958),
                                        fontSize: 15,fontWeight:
                                      FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 65,
                                  decoration: BoxDecoration(
                      color: Colors.white,
               borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.6),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
  ),
                                  
                                  child: FlatButton(
                                    onPressed: () { },
                                    child: Text(
                                      '10%',
                                      style: TextStyle(
                                        color: Color(0xFF3E4958),
                                        fontSize: 15,fontWeight:
                                      FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 65,
                                  decoration: BoxDecoration(
                      color: Colors.white,
               borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.6),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
  ),
                                 
                                  child: FlatButton(
                                    onPressed: () { },
                                    child: Text(
                                      '20%',
                                      style: TextStyle(
                                        color: Color(0xFF3E4958),
                                        fontSize: 15,fontWeight:
                                      FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                //  ),
                                // ),
                              ],
                            ),
                          ),
                           SizedBox(height: 25.0,),

                          Text("Tipping is welcome, but not required.\nThe amount is always up to you."),
                          SizedBox(height: 25.0,),

                          Center(
                            child: Container(
                                  height: 50,
                                  width: 280,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1152fd), borderRadius: BorderRadius.circular(12)),
                                  child: FlatButton(
                                    onPressed: () {Navigator.pushNamed(context, MyRoute.receiptRoute);},
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,fontWeight:
                                      FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                          ),

                        ],
                      ),
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
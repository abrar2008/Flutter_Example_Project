import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:timeline_tile/timeline_tile.dart';
class chatempty extends StatefulWidget {
  const chatempty({ Key? key }) : super(key: key);
  @override
  _chatemptyState createState() => _chatemptyState();
}

class _chatemptyState extends State<chatempty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:   AppBar(
         elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,size: 15,),
            color: Colors.black,
            
            onPressed: () {Navigator.pop(context);  },
          ),  //  ),

          actions: [
      IconButton(
        iconSize: 44,
        icon: Image.asset('assets/patrick.PNG'),
        onPressed: (){} ,
      ),
    ],
          
                title: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Patrick",
                      style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\nVolkswagen Jetta, HS785K',
                          style: TextStyle(
                            color: Color(0xFF97ADB6),
                            fontSize: 11,
                          ),
                        ),
                      ]
                  ),
                ),
              
            ),
            body: Container(
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: new BoxDecoration(
                         image: DecorationImage(
          image: AssetImage(
              'assets/message.PNG'),
          fit: BoxFit.fill,
        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
   
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),



                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right:6),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: IconButton( icon: Icon(Icons.call_outlined,color: Colors.black,),
                                  onPressed: (){},
                                   ),
                      
                      
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width -55,
                              child: Card(
                                margin: EdgeInsets.only(left: 2, right: 2,bottom: 8),
                                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(35)),
                                
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 10,
                                  minLines: 1,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                    hintText: "Start typing here...",
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ))),
                            
                                        
                        ],),
                      ),
                    ),
                  )
                ],
              ),


            ),
      
    );
   // );
  }
}


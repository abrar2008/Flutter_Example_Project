import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class address extends StatefulWidget {
  const address({ Key? key }) : super(key: key);

  @override
  _addressState createState() => _addressState();
}

class _addressState extends State<address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Card(
          shape: CircleBorder(),
          child: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined),
            color: Colors.black,
            onPressed: () { Navigator.pop(context);},
          ),
        ),
        title: Text(
          "Select address",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),

     extendBodyBehindAppBar: true,
      body: SlidingUpPanel(
        minHeight: 150,

        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/address_selection.PNG'),
                  fit: BoxFit.fill
              ),
            )
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
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 45.0),
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
                                padding: const EdgeInsets.only(left:25),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter Pickup Location',
                                    border:
                                    InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                                height: 6.0,
                                indent:25.0,
                                endIndent: 0.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:25),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Where to',
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



                      SizedBox(height: 30),
                      InkWell(
                        onTap: (){ Navigator.pushNamed(context, MyRoute.setlocationRoute);},
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                    child: Image(image: AssetImage('assets/ball.png'))
                                ),
                              ),
                              TextSpan(text: 'Show on a map',
                                style: TextStyle(color: Color(0xFF1152fd),),
                              ),
                            ],
                          ),
                        ),
                      ),


                      SizedBox(height: 22),
                      Text(
                        "RECENT",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),



                      SizedBox(height: 24.0,),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.grey,),
                          SizedBox(width: 12.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("King Cross Underground Statio...",
                                style: TextStyle(fontSize: 13.0),),
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


                      Divider(
                        color: Colors.grey,
                        height: 6.0,
                      ),




                      SizedBox(height: 8.0,),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.grey,),
                          SizedBox(width: 12.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("83, Midwood St",
                                style: TextStyle(fontSize: 13.0),),
                              SizedBox(height: 4.0,),
                              Text("New York", style: TextStyle(color: Colors.black54, fontSize: 10.0),),
                            ],
                          ),
                        ],
                      ),


                      Divider(
                        color: Colors.grey,
                        height: 6.0,
                      ),


                      SizedBox(height: 8.0,),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.grey,),
                          SizedBox(width: 12.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("67, Grand Central Pakwy",
                                style: TextStyle(fontSize: 13.0),),
                              SizedBox(height: 4.0,),
                              Text("New York", style: TextStyle(color: Colors.black54, fontSize: 10.0),),
                            ],
                          ),
                        ],
                      ),


                      Divider(
                        color: Colors.grey,
                        height: 6.0,
                      ),

                      SizedBox(height: 8.0,),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.grey,),
                          SizedBox(width: 12.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("67, Grand Central Pakwy",
                                style: TextStyle(fontSize: 13.0),),
                              SizedBox(height: 4.0,),
                              Text("New York", style: TextStyle(color: Colors.black54, fontSize: 10.0),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  //),
                ),

              ],
          //  ),
          ),
        ),
      )
    );

  }
}



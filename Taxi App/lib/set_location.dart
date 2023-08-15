import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class setlocation extends StatefulWidget {
  const setlocation({Key? key}) : super(key: key);

  @override
  _setlocationState createState() => _setlocationState();
}

class _setlocationState extends State<setlocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Card(
            shape: CircleBorder(),
            child: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined),
              color: Colors.black,
              onPressed: () {Navigator.pop(context); },
            ),
          ),
        ),
        extendBodyBehindAppBar: true,

        body: SlidingUpPanel(
          maxHeight: 300,
          minHeight: 250,
          isDraggable: false,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),

          body: Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/set_location.PNG'),
                        fit: BoxFit.fill
                    ),
                  )

              ),
              // Padding(
              //padding: const EdgeInsets.only(left: 100,top: 200),
              //child: Align(
              // alignment: Alignment.topRight,

              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: Center(
                  widthFactor: 100,
                  heightFactor: 100,
                  child: Container(
                    child: Icon(Icons.my_location_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              // )
              //   ),
              // ),
            ],
          ),

          panel: SingleChildScrollView(
            //child: Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 45.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Destination location",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:18,
                        ),
                      ),
                      SizedBox(height: 24.0,),
                      // Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //children: [
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.location_on,
                              color: Color(0xFF1152fd),),
                          ),
                          SizedBox(width: 12.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start,
                            children: [
                              Text(
                                "No 64, Kings Cross Underground \nStation, KZF67T",
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

                      // ],
                      //),

                      SizedBox(height: 40.0,),
                      Center(
                        child: Container(
                          height: 50,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Color(0xFF1152fd), borderRadius: BorderRadius.circular(12)),
                          child: FlatButton(
                            onPressed: () {Navigator.pushNamed(context, MyRoute.payment_optRoute);},
                            child: Text(
                              'Set destination location',
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

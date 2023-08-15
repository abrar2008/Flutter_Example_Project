import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class ride_options extends StatefulWidget {
  const ride_options({Key? key}) : super(key: key);

  @override
  _ride_optionsState createState() => _ride_optionsState();
}

class _ride_optionsState extends State<ride_options> {
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
              onPressed: () {Navigator.pop(context); },
            ),
          ),
          title: Text(
            "Ride options",
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
          isDraggable: false,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),

             body: Container(
        width: double.infinity,
        height: double.infinity,
    decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage(
          'assets/ride_option.PNG'),
        fit: BoxFit.fill
    ),
    )
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
                      Container(
                        child: Card(
                          elevation: 8,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child:Padding(
                            padding: const EdgeInsets.only(left: 15,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 40.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/car.PNG'),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    SizedBox(height: 1.0,),
                                    Text("Standard"),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right:22),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(String.fromCharCodes(new Runes('\u0024')), style: TextStyle(fontSize: 10)),
                                          Text("6", style: TextStyle(fontSize: 20)),
                                          Text("32", style: TextStyle(fontSize: 10)),
                                          Text("-", style: TextStyle(fontSize: 20)),
                                          Text("7", style: TextStyle(fontSize: 20)),
                                          Text("63", style: TextStyle(fontSize: 10)),
                                        ],
                                      ),
                                      SizedBox(height: 10.0,),
                                      Container(
                                        width: 40,
                                        //padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.all(Radius.circular(5))
                                          //border: Border.all(color: Colors.orangeAccent, width: 4)
                                        ),
                                        child: Center(child: Text("3min", style: TextStyle(fontSize: 13,
                                            color:Colors.white
                                        ),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),



                      SizedBox(height: 24.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Estimated trip time",
                                style: TextStyle(fontSize: 12.0,
                                  color: Colors.black54,),),
                              SizedBox(height: 4.0,),
                              Text("24 mint", style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 13.0
                              ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:20),
                            child: Container(
                              height: 30.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/card.PNG'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 40.0,),
                      Center(
                        child: Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color(0xFF1152fd), borderRadius: BorderRadius.circular(15)),
                          child: FlatButton(
                            onPressed: () {Navigator.pushNamed(context, MyRoute.search_driverRoute);},
                            child: Text(
                              'Book ride',
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

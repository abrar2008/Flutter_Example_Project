import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
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
            "Payment options",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),

        extendBodyBehindAppBar: true,
        body: SlidingUpPanel(
          maxHeight: 330,
          minHeight: 330,
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
                      Text("Select Payment",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:18,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        height: 60,
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Padding(
                            padding: const EdgeInsets.only(left: 15,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
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
                                Padding(
                                  padding: const EdgeInsets.only(right:22),
                                  child: InkWell(
                                    onTap:(){Navigator.pushNamed(context, MyRoute.ride_optRoute);},
                                    child: Icon(Icons.chevron_right_outlined,
                                      color: Color(0xFF97ADB6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),



                      SizedBox(height: 4.0,),
                      Container(
                        height: 60,
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Padding(
                            padding: const EdgeInsets.only(left: 15,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/debit.PNG'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right:22),
                                  child: InkWell(
                                    onTap:(){Navigator.pushNamed(context, MyRoute.search_driverRoute);},
                                    child: Icon(Icons.chevron_right_outlined,
                                      color: Color(0xFF97ADB6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 4.0,),
                      Container(
                        height: 60,
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Padding(
                            padding: const EdgeInsets.only(left: 15,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/cash.PNG'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right:22),
                                  child: InkWell(
                                    onTap:(){Navigator.pushNamed(context, MyRoute.search_driverRoute);},
                                    child: Icon(Icons.chevron_right_outlined,
                                      color: Color(0xFF97ADB6),
                                    ),
                                  ),
                                ),
                              ],
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

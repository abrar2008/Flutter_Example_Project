import 'dart:ui';
import 'package:internship/routes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'menu.dart';

class Receipt extends StatefulWidget {
  const Receipt({Key? key}) : super(key: key);

  @override
  _ReceiptState createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Card(
          shape: CircleBorder(),
          child: IconButton(
            icon: Icon(Icons.sort_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Center(
              child: Container(
                height: 70.h,
                width: 90.w,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Container(
                        height: 10.h,
                        width: 10.h,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.done,
                          color: Colors.blue[700],
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      'Your trip has ended',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.h),
                      child: Container(
                        width: 90.w,
                        height: 30.h,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFe5e5e5), // Set border color
                              ), // Set border width
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            padding: EdgeInsets.only(
                                left: 25.0, right: 25.0, top: 10.0),
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
                                    padding:
                                        EdgeInsets.only(bottom: 6, right: 6),
                                  ),
                                  startChild: Container(
                                    height: 50,
                                    child: Text(
                                      "11:24",
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Color(0xFF97ADB6)),
                                    ),
                                  ),
                                  endChild: Container(
                                      height: 60,
                                      child: Wrap(
                                        children: [
                                          Text(
                                            "1, Thrale Street, London,\n SE19HW, UK",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Color(0xFF3E4958)),
                                          )
                                        ],
                                      )),
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
                                    padding:
                                        EdgeInsets.only(bottom: 6, right: 6),
                                  ),
                                  startChild: Container(
                                    height: 50,
                                    child: Text(
                                      "11:38",
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Color(0xFF97ADB6)),
                                    ),
                                  ),
                                  endChild: Container(
                                      height: 60,
                                      child: Wrap(
                                        children: [
                                          Text(
                                            "Ealing Broadway Shopping\nCentre, London, W55JY, UK",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Color(0xFF3E4958)),
                                          )
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 80.w,
                      child: Card(
                        color: Color(0xFFF7F8F9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 5.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xFFF7F8F9),
                                image: DecorationImage(
                                  image: AssetImage('assets/card2.PNG'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Row(children: [
                              Center(
                                child: Text(
                                    String.fromCharCodes(new Runes('\u0024')),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                              Center(
                                  child: Text("7",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30))),
                              Center(
                                  child: Text("63",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15))),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h,bottom: 1.h),
            child: Container(
              height: 8.h,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Color(0xFF1152fd),
                  borderRadius: BorderRadius.circular(12)),
              child: TextButton(
                onPressed: () {Navigator.pushNamed(context, MyRoute.addressRoute);},
                child: Text(
                  'Ok',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: menu(),
    );
  }
}

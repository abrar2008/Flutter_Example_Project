import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:sizer/sizer.dart';

import 'menu.dart';

class UnpaidOrder extends StatefulWidget {
  const UnpaidOrder({Key? key}) : super(key: key);

  @override
  _UnpaidOrderState createState() => _UnpaidOrderState();
}

class _UnpaidOrderState extends State<UnpaidOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Card(
            shape: CircleBorder(),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_outlined),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: SlidingUpPanel(
          maxHeight: 40.h,
          minHeight: 40.h,
          isDraggable: false,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/booking.PNG'), fit: BoxFit.fill),
              )),
          panel: Container(
            height: 80.h,
            width: 80.w,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 45.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sorry, you have an unpaid order.\nOrder amount:",
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 10.h,
                      child: Card(
                        elevation: 4,
                        shadowColor: Color(0xFFF7F8F9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 150.0),
                          child: Row(
                            children: [
                              Container(
                                height: 50.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: Row(
                                  children: [
                                    Center(
                                      child: Text(
                                          String.fromCharCodes(
                                              new Runes('\u0024')),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    ),
                                    Center(
                                        child: Text("12",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30))),
                                    Center(
                                        child: Text("63",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15))),
                                  ],
                                ),
                              ),
                              //// Padding(
                              // padding: const EdgeInsets.only(right: 22),
                              Icon(
                                Icons.chevron_right_outlined,
                                color: Color(0xFF97ADB6),
                              ),
                              //  ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h,bottom: 0.5.h),
                      child: Container(
                        height: 7.5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Color(0xFF1152fd),
                            borderRadius: BorderRadius.circular(12)),
                        child: TextButton(
                          onPressed: () {
                             Navigator.pushNamed(context, MyRoute.unsupportedLocRoute);
                          },
                          child: Text(
                            'Retry payment',
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
              ),
            ),
          ),
        ),
        drawer: menu(),
        );
  }
}

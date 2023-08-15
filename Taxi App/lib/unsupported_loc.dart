import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:sizer/sizer.dart';

import 'menu.dart';

class UnsupportedLoc extends StatefulWidget {
  const UnsupportedLoc({Key? key}) : super(key: key);

  @override
  _UnsupportedLocState createState() => _UnsupportedLocState();
}

class _UnsupportedLocState extends State<UnsupportedLoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: Card(
          shape: CircleBorder(),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {},
          ),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: SlidingUpPanel(
        maxHeight: 35.h,
        minHeight: 35.h,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/booking.PNG'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.h, top: 40.h),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/shooter.PNG'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    )),
              ),
            ],
          ),
        ),
        panel: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Container(
                      height: 12.h,
                      width: 12.h,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Center(
                      child: Text(
                    'Sorry, there are no vehicles',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  )),
                  Center(
                      child: Text(
                    'in this area.',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  )),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 0.1.h),
                    child: Center(
                      child: Container(
                        height: 7.h,
                        width: 50.h,
                        decoration: BoxDecoration(
                            color: Color(0xFF1152fd),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextButton(
                          onPressed: () { Navigator.pushNamed(context, MyRoute.addressRoute);},
                          child: Text(
                            'Choose another location',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: menu(),
    );
  }
}

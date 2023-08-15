import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:sizer/sizer.dart';

import 'menu.dart';

class RetryPayment extends StatefulWidget {
  const RetryPayment({Key? key}) : super(key: key);

  @override
  _RetryPaymentState createState() => _RetryPaymentState();
}

class _RetryPaymentState extends State<RetryPayment> {
   startTime() async {
  var duration = new Duration(seconds: 7);
  return new Timer(duration, route);
}
route() {
    { Navigator.pushNamed(context, MyRoute.unpaidRoute);}
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Card(
          elevation: 2,
          shape: CircleBorder(),
          child: IconButton(
            icon: Icon(Icons.sort_outlined),
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
        panel: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Retrying payment.',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
              Text(
                'It may take a few seconds...',
                style: TextStyle(fontSize: 12.sp),
              ),
            ],
          ),
        ),
      ),
      drawer: menu(),
    );
  }
}

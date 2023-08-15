import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sizer/sizer.dart';

class CancelReason extends StatefulWidget {
  const CancelReason({Key? key}) : super(key: key);

  @override
  _CancelReasonState createState() => _CancelReasonState();
}

class _CancelReasonState extends State<CancelReason> {
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: Card(
          elevation: 2,
          shape: CircleBorder(),
          child: IconButton(
            icon: Icon(Icons.sort_outlined),
            onPressed: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Please select the\nreason for cancellation:',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 2.h, right: 2.h, top: 2.h, bottom: 2.h),
                //outer box
                child: Center(
                  child: Container(
                    color: Colors.white,
                    height: 60.h,
                    width: 90.h,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 10.h,
                                //width: 20,
                              ),
                              Checkbox(
                                checkColor: Colors.white,
                                shape: CircleBorder(),
                                value: valuefirst,
                                onChanged: (bool? value) {
                                  setState(() {
                                    valuefirst = value!;
                                  });
                                },
                              ),
                              Text(
                                'I don\’t want to share',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                            indent: 30,
                            height: 9.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Checkbox(
                                checkColor: Colors.white,
                                shape: CircleBorder(),
                                value: valuefirst,
                                onChanged: (bool? value) {
                                  setState(() {
                                    valuefirst = value!;
                                  });
                                },
                              ),
                              Text(
                                'Can\'t contact the driver',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                            indent: 30,
                            height: 9.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Checkbox(
                                checkColor: Colors.white,
                                shape: CircleBorder(),
                                value: valuefirst,
                                onChanged: (bool? value) {
                                  setState(() {
                                    valuefirst = value!;
                                  });
                                },
                              ),
                              Text(
                                'Driver is late',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                            indent: 30,
                            height: 9.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Checkbox(
                                checkColor: Colors.white,
                                shape: CircleBorder(),
                                value: valuefirst,
                                onChanged: (bool? value) {
                                  setState(() {
                                    valuefirst = value!;
                                  });
                                },
                              ),
                              Text(
                                'The price is not reasonable',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                            indent: 30,
                            height: 9.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Checkbox(
                                checkColor: Colors.white,
                                shape: CircleBorder(),
                                value: valuefirst,
                                onChanged: (bool? value) {
                                  setState(() {
                                    valuefirst = value!;
                                  });
                                },
                              ),
                              Text(
                                'Pickup address is incorrect',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                            indent: 30,
                            height: 9.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 8.h,
              width: 80.w,
              decoration: BoxDecoration(
                  color: Color(0xFF1152fd),
                  borderRadius: BorderRadius.circular(12)),
              child: TextButton(
                onPressed: () {Navigator.pushNamed(context, MyRoute.retryRoute);},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

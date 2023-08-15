import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship/routes.dart';
import 'package:sizer/sizer.dart';

class VerifyCodeCall extends StatefulWidget {
  const VerifyCodeCall({Key? key}) : super(key: key);

  @override
  _VerifyCodeCall createState() => _VerifyCodeCall();
}

class _VerifyCodeCall extends State<VerifyCodeCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
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
        title: Text(
          'Verify code',
          style: TextStyle(
            fontSize: 15.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        reverse: true,
        child: Stack(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  Text('A code has been sent to ',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                  ),
                  Text('+93 234 556 7888 via SMS',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),),
                  SizedBox(height: 10.h),
                  Container(
                    width: 80.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          fit: FlexFit.tight,
                          child: TextField(
                            maxLength: 1,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Railway',
                              fontWeight: FontWeight.w900,
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              counter: Offstage(),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          child: TextField(
                            maxLength: 1,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Railway',
                              fontWeight: FontWeight.w900,
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              counter: Offstage(),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          child: TextField(
                            maxLength: 1,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Railway',
                              fontWeight: FontWeight.w900,
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              counter: Offstage(),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          child: TextField(
                            maxLength: 1,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Railway',
                              fontWeight: FontWeight.w900,
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              counter: Offstage(),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    'The SMS with the code didn\'t arrive?',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 8.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: TextButton(
                      onPressed: () {Navigator.pushNamed(context, MyRoute.bookingRoute); },
                      child: Text(
                        'Press here to get a call.',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//SafeArea(
  //      child: SingleChildScrollView(
    //      reverse: true,
      //    
        //),
      //),
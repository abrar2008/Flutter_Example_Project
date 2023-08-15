import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship/routes.dart';
import 'package:sizer/sizer.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
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
            icon: Icon(Icons.arrow_back_ios_new_outlined),
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
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Center(
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
                  InkWell(
                    onTap: (){Navigator.pushNamed(context, MyRoute.verifyresendRoute); },
                    child: Text(
                      'Resend code:',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.grey[700],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}

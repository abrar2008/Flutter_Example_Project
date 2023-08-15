import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship/routes.dart';
import 'package:sizer/sizer.dart';

class VerifyCodeResendCode extends StatefulWidget {
  const VerifyCodeResendCode({Key? key}) : super(key: key);

  @override
  _VerifyCodeResendCode createState() => _VerifyCodeResendCode();
}

class _VerifyCodeResendCode extends State<VerifyCodeResendCode> {
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
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
        child: Container(
          height: double.infinity.h,
          width: double.infinity.w,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Text('A code has been sent to '),
                  SizedBox(height: 10),
                  Text('+93 234 556 7888 via SMS'),
                  SizedBox(height: 20),
                  Container(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          fit: FlexFit.tight,
                          child: TextField(
                            maxLength: 1,
                            style: TextStyle(
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
                  SizedBox(height: 10),
                  InkWell(
                    onTap: (){Navigator.pushNamed(context, MyRoute.verifycallRoute); },
                    child: Text(
                      'Resend code ( 0:30 )',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:guily_app/screens/loginScreen/forgotpass.dart';
import 'package:guily_app/screens/settings_screen/accountsettings/account_settings.dart';
import 'package:guily_app/screens/settings_screen/accountsettings/image_picker_handler.dart';

class ChangeUsernameOrPassword extends StatefulWidget {
  @override
  ChangeUsernameOrPasswordState createState() =>
      ChangeUsernameOrPasswordState();
}

class ChangeUsernameOrPasswordState extends State<ChangeUsernameOrPassword>
    with TickerProviderStateMixin, ImagePickerListener {
  File _image;
  AnimationController _controller;
  ImagePickerHandler imagePicker;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    imagePicker = new ImagePickerHandler(this, _controller);
    imagePicker.init();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.09,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Enter new user name:',
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            CupertinoTextField(
                              padding: EdgeInsets.all(10),
                              placeholder: 'username',
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                              ),
                              onChanged: (String value) {},
                              placeholderStyle: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Enter old password:',
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            CupertinoTextField(
                              obscureText: true,
                              padding: EdgeInsets.all(10),
                              placeholder: 'password',
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                              ),
                              onChanged: (String value) {},
                              placeholderStyle: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Forgot Password?",
                                        style: GoogleFonts.nunito(
                                            fontSize: 13,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationThickness: 2,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  onTap: () {
                                    ForgotPassword();
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Enter new password:',
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            CupertinoTextField(
                              obscureText: true,
                              padding: EdgeInsets.all(10),
                              placeholder: 'password',
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                              ),
                              onChanged: (String value) {},
                              placeholderStyle: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Re-Enter new password',
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            CupertinoTextField(
                              obscureText: true,
                              padding: EdgeInsets.all(10),
                              placeholder: 'confirm password',
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                              ),
                              onChanged: (String value) {},
                              placeholderStyle: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  color: Colors.blue,
                                  onPressed: () {},
                                  child: Text(
                                    "Submit",
                                    style: GoogleFonts.nunito(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                // height
                height: MediaQuery.of(context).size.height * 0.08,

                color: Colors.white,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => AccountSettings()));
                      },
                      child: Container(
                        width: 80,
                        height: 45,
                        color: Colors.transparent,
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: SvgPicture.network(
                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FGroup%20131.svg?alt=media&token=e492c6d8-8e5f-4fe5-8522-d3c4957745a2',
                            matchTextDirection: true,
                            allowDrawingOutsideViewBox: false,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Change username or password',
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  userImage(File _image) {
    setState(() {
      this._image = _image;
    });
  }
}

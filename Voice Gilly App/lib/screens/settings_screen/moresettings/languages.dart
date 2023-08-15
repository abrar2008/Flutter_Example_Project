import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Languages extends StatefulWidget {
  @override
  LanguagesState createState() => LanguagesState();
}

class LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    bool english = true;
    bool chinese = false;
    bool italian = false;
    bool spanish = false;
    bool urdu = false;
    bool brazilian = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/flags/cn.png",
                      ),

                      // height: 50,
                      // width: 50,
                      // decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      // ),
                      // child: Image(
                      //   // height: 50,
                      //   // width: 50,
                      //   image: AssetImage("assets/flags/cn.png"),
                      //   // fit: BoxFit.contain,
                      // ),
                    ),
                    dense: true,
                    title: Text(
                      "Chinese",
                      style: GoogleFonts.nunito(fontSize: 14),
                    ),
                    trailing: Checkbox(
                      // value: false,
                      value: chinese,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(
                          () {
                            // if (english) {
                            chinese = newValue;
                            brazilian = false;
                            urdu = false;
                            english = false;
                            italian = false;
                            spanish = false;
                            // }
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Divider(),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/flags/gb.png",
                      ),
                    ),
                    dense: true,
                    title: Text(
                      "English",
                      style: GoogleFonts.nunito(fontSize: 14),
                    ),
                    trailing: Checkbox(
                      // value: false,
                      value: english,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(
                          () {
                            // if (english) {
                            english = newValue;
                            brazilian = false;
                            urdu = false;
                            chinese = false;
                            italian = false;
                            spanish = false;
                            // }
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Divider(),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/flags/pk.png",
                      ),
                    ),
                    dense: true,
                    title: Text(
                      "Urdu",
                      style: GoogleFonts.nunito(fontSize: 14),
                    ),
                    trailing: Checkbox(
                      // value: false,
                      value: urdu,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(
                          () {
                            // if (urdu) {
                            urdu = newValue;
                            english = false;
                            brazilian = false;
                            chinese = false;
                            italian = false;
                            spanish = false;
                            //  }
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Divider(),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/flags/it.png",
                      ),
                    ),
                    dense: true,
                    title: Text(
                      "Italian",
                      style: GoogleFonts.nunito(fontSize: 14),
                    ),
                    trailing: Checkbox(
                      // value: false,
                      value: italian,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(
                          () {
                            // if (newValue) {
                            italian = newValue;
                            english = false;
                            urdu = false;
                            chinese = false;
                            brazilian = false;
                            spanish = false;
                            // }
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Divider(),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/flags/es.png",
                      ),
                    ),
                    dense: true,
                    title: Text(
                      "Spanish",
                      style: GoogleFonts.nunito(fontSize: 14),
                    ),
                    trailing: Checkbox(
                      // value: false,
                      value: spanish,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(
                          () {
                            // if (newValue) {
                            spanish = newValue;
                            english = false;
                            urdu = false;
                            chinese = false;
                            italian = false;
                            brazilian = false;
                            // }
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Divider(),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/flags/br.png",
                      ),
                    ),
                    dense: true,
                    title: Text(
                      "Brazilian",
                      style: GoogleFonts.nunito(fontSize: 14),
                    ),
                    trailing: Checkbox(
                      // value: false,
                      value: brazilian,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(
                          () {
                            if (newValue) {
                              brazilian = newValue;
                              english = false;
                              urdu = false;
                              chinese = false;
                              italian = false;
                              spanish = false;
                            }
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                // height
                height: MediaQuery.of(context).size.height * 0.09,

                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.network(
                          'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FGroup%20131.svg?alt=media&token=0001b3bc-9092-4a35-9443-64b7fb9a0847',
                          matchTextDirection: true,
                          allowDrawingOutsideViewBox: false,
                          // height: 10,
                          // width: 10,
                          // height: MediaQuery.of(context).size.height * 0.05,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      'Languages',
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
}

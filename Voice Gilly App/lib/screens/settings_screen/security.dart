import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:guily_app/screens/settings_screen/settings.dart';

class SecurityScreen extends StatefulWidget {
  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool scannerPro = false;
  bool iOSDataProtection = true;
  bool blockCustomKeywords = false;
  bool blockExternalLinks = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                // height: MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                                        fit: BoxFit.cover)),
                                child: ListTile(
                                  title: Text(
                                    "Show file name extension",
                                    // textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (scannerPro) {
                                          scannerPro = false;
                                        } else {
                                          scannerPro = true;
                                        }
                                      });
                                    },
                                    child: Container(
                                      child: CustomSwitchButton(
                                          backgroundColor: scannerPro
                                              ? Colors.blue
                                              : Colors.grey,
                                          unCheckedColor: Colors.white,
                                          animationDuration:
                                              Duration(milliseconds: 400),
                                          checkedColor: Colors.white,
                                          checked: scannerPro),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                // height: MediaQuery.of(context).size.height * 0.09,
                                child: Text(
                                  'System',
                                  // textAlign: TextAlign.start,
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                // height: MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                                        fit: BoxFit.cover)),
                                child: ListTile(
                                  title: Text(
                                    "Show file name extension",
                                    // textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (iOSDataProtection) {
                                          iOSDataProtection = false;
                                        } else {
                                          iOSDataProtection = true;
                                        }
                                      });
                                    },
                                    child: Container(
                                      child: CustomSwitchButton(
                                          backgroundColor: iOSDataProtection
                                              ? Colors.blue
                                              : Colors.grey,
                                          unCheckedColor: Colors.white,
                                          animationDuration:
                                              Duration(milliseconds: 400),
                                          checkedColor: Colors.white,
                                          checked: iOSDataProtection),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: Wrap(
                                  children: [
                                    Text(
                                      "Nam sed congue ante. Phasellus vel eros non nunc convallis aliquet. Morbi rhoncus arcu in libero mattis scelerisque.",
                                      style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                // height: MediaQuery.of(context).size.height * 0.09,
                                child: Text(
                                  'Privacy',
                                  // textAlign: TextAlign.start,
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                // height: MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                                        fit: BoxFit.cover)),
                                child: ListTile(
                                  title: Text(
                                    "Block custom keywords",
                                    // textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (blockCustomKeywords) {
                                          blockCustomKeywords = false;
                                        } else {
                                          blockCustomKeywords = true;
                                        }
                                      });
                                    },
                                    child: Container(
                                      child: CustomSwitchButton(
                                          backgroundColor: blockCustomKeywords
                                              ? Colors.blue
                                              : Colors.grey,
                                          unCheckedColor: Colors.white,
                                          animationDuration:
                                              Duration(milliseconds: 400),
                                          checkedColor: Colors.white,
                                          checked: blockCustomKeywords),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                // height: MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                                        fit: BoxFit.cover)),
                                child: ListTile(
                                  title: Text(
                                    "Block external links",
                                    // textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (blockExternalLinks) {
                                          blockExternalLinks = false;
                                        } else {
                                          blockExternalLinks = true;
                                        }
                                      });
                                    },
                                    child: Container(
                                      child: CustomSwitchButton(
                                          backgroundColor: blockExternalLinks
                                              ? Colors.blue
                                              : Colors.grey,
                                          unCheckedColor: Colors.white,
                                          animationDuration:
                                              Duration(milliseconds: 400),
                                          checkedColor: Colors.white,
                                          checked: blockExternalLinks),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: Wrap(
                                  children: [
                                    Text(
                                      "Phasellus vel eros non nunc convallis aliquet. Morbi rhoncus arcu in libero mattis scelerisque.",
                                      style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
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
                                  builder: (context) => Settings()));
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
                        'Security',
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
      ),
    );
  }
}

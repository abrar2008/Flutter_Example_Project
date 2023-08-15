import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:guily_app/screens/settings_screen/settings.dart';

class PDFViewerScreen extends StatefulWidget {
  @override
  _PDFViewerScreenState createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  bool highlightFormField = true;
  bool highlightLinks = true;
  bool pageTapZones = true;
  bool showAutomatically = true;
  bool alwaysShow = false;
  bool neverShow = false;
  bool displayAuthorAndDate = false;
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      // height: MediaQuery.of(context).size.height * 0.09,
                      child: Text(
                        'General',
                        // textAlign: TextAlign.start,
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                          "Highlight form field",
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
                              if (highlightFormField) {
                                highlightFormField = false;
                              } else {
                                highlightFormField = true;
                              }
                            });
                          },
                          child: Container(
                            child: CustomSwitchButton(
                              backgroundColor: highlightFormField
                                  ? Colors.blue
                                  : Colors.grey,
                              unCheckedColor: Colors.white,
                              animationDuration: Duration(milliseconds: 200),
                              checkedColor: Colors.white,
                              checked: highlightFormField,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                          "Highlight links",
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
                              if (highlightLinks) {
                                highlightLinks = false;
                              } else {
                                highlightLinks = true;
                              }
                            });
                          },
                          child: Container(
                            child: CustomSwitchButton(
                              backgroundColor:
                                  highlightLinks ? Colors.blue : Colors.grey,
                              unCheckedColor: Colors.white,
                              animationDuration: Duration(milliseconds: 200),
                              checkedColor: Colors.white,
                              checked: highlightLinks,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                          "Page tap zones",
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
                              if (pageTapZones) {
                                pageTapZones = false;
                              } else {
                                pageTapZones = true;
                              }
                            });
                          },
                          child: Container(
                            child: CustomSwitchButton(
                              backgroundColor:
                                  pageTapZones ? Colors.blue : Colors.grey,
                              unCheckedColor: Colors.white,
                              animationDuration: Duration(milliseconds: 200),
                              checkedColor: Colors.white,
                              checked: pageTapZones,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      // height: MediaQuery.of(context).size.height * 0.09,
                      child: Text(
                        'Page number indicator',
                        // textAlign: TextAlign.start,
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          alwaysShow = false;
                          showAutomatically = true;
                          neverShow = false;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        // height: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: showAutomatically
                                  ? NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.png?alt=media&token=db7641eb-1c11-435f-ba5f-9be5c5b0b545')
                                  : NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),

                              // scale: 1.0,
                              fit: BoxFit.cover,
                            )),
                        child: ListTile(
                          title: Text(
                            "Show file name extension",
                            // textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: showAutomatically
                              ? SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%2070.svg?alt=media&token=5666fa6d-f039-4e0f-a5cf-b273a25de863',
                                  // height: 10,
                                  // width: 10,
                                  fit: BoxFit.none,
                                )
                              : Container(
                                  child: Text(""),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          alwaysShow = true;
                          showAutomatically = false;
                          neverShow = false;
                          // if (showAutomatically) {
                          // showAutomatically = false;
                          // } else {
                          // showAutomatically = true;
                          // }
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        // height: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: alwaysShow
                                  ? NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.png?alt=media&token=db7641eb-1c11-435f-ba5f-9be5c5b0b545')
                                  : NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),

                              // scale: 1.0,
                              fit: BoxFit.cover,
                            )),
                        child: ListTile(
                          title: Text(
                            "Always show",
                            // textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: alwaysShow
                              ? SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%2070.svg?alt=media&token=5666fa6d-f039-4e0f-a5cf-b273a25de863',
                                  // height: 10,
                                  // width: 10,
                                  fit: BoxFit.none,
                                )
                              : Container(
                                  child: Text(""),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          alwaysShow = false;
                          showAutomatically = false;
                          neverShow = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        // height: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: neverShow
                                  ? NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.png?alt=media&token=db7641eb-1c11-435f-ba5f-9be5c5b0b545')
                                  : NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),

                              // scale: 1.0,
                              fit: BoxFit.cover,
                            )),
                        child: ListTile(
                          title: Text(
                            "Never show",
                            // textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: neverShow
                              ? SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%2070.svg?alt=media&token=5666fa6d-f039-4e0f-a5cf-b273a25de863',
                                  // height: 10,
                                  // width: 10,
                                  fit: BoxFit.none,
                                )
                              : Container(
                                  child: Text(""),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      // height: MediaQuery.of(context).size.height * 0.09,
                      child: Text(
                        'Annotations summary',
                        // textAlign: TextAlign.start,
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                          "Display author and date",
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
                              if (displayAuthorAndDate) {
                                displayAuthorAndDate = false;
                              } else {
                                displayAuthorAndDate = true;
                              }
                            });
                          },
                          child: Container(
                            child: CustomSwitchButton(
                              backgroundColor: displayAuthorAndDate
                                  ? Colors.blue
                                  : Colors.grey,
                              unCheckedColor: Colors.white,
                              animationDuration: Duration(milliseconds: 200),
                              checkedColor: Colors.white,
                              checked: displayAuthorAndDate,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ],
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
                      'PDF Viewer',
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

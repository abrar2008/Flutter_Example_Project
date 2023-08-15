import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DuplicateFiles extends StatefulWidget {
  @override
  _DuplicateFilesState createState() => _DuplicateFilesState();
}

class _DuplicateFilesState extends State<DuplicateFiles> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;

  bool showRecents = true;
  List<String> images = [
    'assets/images2/flamingo.png',
    'assets/images2/clay.png',
    'assets/images2/dog.png',
    'assets/images2/butterfly.png',
  ];
  List<String> title = ['Ricardo', 'SandPot', 'Dog', 'Butterfly'];
  List<String> subtitle = [
    '5,feb,2021',
    '15,feb,2021',
    '20,feb,2021',
    '25,feb,2021'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    "assets/images/settingicons/Mask Group 12.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Outlook",
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Checkbox(
                                              value: val1,
                                              activeColor: Colors.black,
                                              checkColor: Colors.white,
                                              onChanged: (bool newValue) {
                                                setState(() {
                                                  val1 = newValue;
                                                });
                                              }),
                                        ],
                                      ),
                                      Text("15,Feb 2020",
                                          style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    "assets/images/settingicons/farida-davletshina-VA4AnrvL0Ns-unsplash (1).png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Outlook",
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Checkbox(
                                              value: val2,
                                              activeColor: Colors.black,
                                              checkColor: Colors.white,
                                              onChanged: (bool newValue) {
                                                setState(() {
                                                  val2 = newValue;
                                                });
                                              }),
                                        ],
                                      ),
                                      Text("15,Feb 2020",
                                          style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    "assets/images/settingicons/Mask Group 14.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Journey",
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Checkbox(
                                              value: val3,
                                              activeColor: Colors.black,
                                              checkColor: Colors.white,
                                              onChanged: (bool newValue) {
                                                setState(() {
                                                  val3 = newValue;
                                                });
                                              }),
                                        ],
                                      ),
                                      Text("15,Feb 2020",
                                          style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    "assets/images/settingicons/Mask Group 28.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Lighthouse",
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Checkbox(
                                              value: val4,
                                              activeColor: Colors.black,
                                              checkColor: Colors.white,
                                              onChanged: (bool newValue) {
                                                setState(() {
                                                  val4 = newValue;
                                                });
                                              }),
                                        ],
                                      ),
                                      Text("15,Feb 2020",
                                          style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          "assets/images/Group 131.svg",
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
                      'Duplicated files',
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image:
                          AssetImage("assets/images/settingicons/Path 296.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    "Delete",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

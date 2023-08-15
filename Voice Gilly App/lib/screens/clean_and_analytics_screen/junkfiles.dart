import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Junkfiles extends StatefulWidget {
  Junkfiles({Key key}) : super(key: key);

  @override
  _JunkfilesState createState() => _JunkfilesState();
}

class _JunkfilesState extends State<Junkfiles> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  int counter = 0;
  bool selectAll = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: <Widget>[
                ListTile(
                  leading: SvgPicture.asset(
                    "assets/images/Group 131.svg",
                    matchTextDirection: true,
                    allowDrawingOutsideViewBox: false,
                    ),
                  title: Text(
                    "Junk Files",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Selected: $counter',
                    style: GoogleFonts.nunito(fontSize: 12),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (!selectAll) {
                            val1 = true;
                            val2 = true;
                            val3 = true;
                            selectAll = true;
                            counter = 3;
                          } else {
                            val1 = false;
                            val2 = false;
                            val3 = false;
                            selectAll = false;
                            counter = 0;
                          }
                        });
                      },
                      child: selectAll
                          ? Text(
                              "Unselect all",
                              style: GoogleFonts.roboto(
                                  fontSize: 14, color: Colors.blue),
                            )
                          : Text(
                              "Select all",
                              style: GoogleFonts.roboto(
                                  fontSize: 14, color: Colors.blue),
                            )),
                ),
                ListTile(
                  leading: Container(
                    child: Wrap(
                      children: <Widget>[
                        Checkbox(
                          // value: false,
                          value: val2,
                          activeColor: Colors.black,
                          checkColor: Colors.white,
                          onChanged: (bool newValue) {
                            setState(
                              () {
                                val2 = newValue;
                              },
                            );
                          },
                        ),
                        SvgPicture.asset('assets/images2/paper.svg'),
                      ],
                    ),
                  ),
                  title: Text(
                    "Temporary Files",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "564 MB",
                    style: GoogleFonts.nunito(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Divider(
                    color: Colors.grey[300],
                  ),
                ),
                ListTile(
                  leading: Container(
                    child: Wrap(
                      children: <Widget>[
                        Checkbox(
                          // value: false,
                          value: val3,
                          activeColor: Colors.black,
                          checkColor: Colors.white,
                          onChanged: (bool newValue) {
                            setState(
                              () {
                                val3 = newValue;
                              },
                            );
                          },
                        ),
                        SvgPicture.asset('assets/images2/review.svg'),
                      ],
                    ),
                  ),
                  title: Text(
                    "Long Files",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "65 MB App details for troubleshooting",
                    style: GoogleFonts.nunito(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Divider(
                    color: Colors.grey[300],
                  ),
                ),
                ListTile(
                  leading: Container(
                    child: Wrap(
                      children: <Widget>[
                        Checkbox(
                          // value: false,
                          value: val1,
                          activeColor: Colors.black,
                          checkColor: Colors.white,
                          onChanged: (bool newValue) {
                            setState(
                              () {
                                val1 = newValue;
                              },
                            );
                          },
                        ),
                        SvgPicture.asset('assets/images2/Group 22.svg'),
                      ],
                    ),
                  ),
                  title: Text(
                    "Junk Text Files",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "24 MB",
                    style: GoogleFonts.nunito(fontSize: 12),
                  ),
                ),
              ],
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

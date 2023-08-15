import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PictureQualityScreen extends StatefulWidget {
  PictureQualityScreen({Key key}) : super(key: key);

  @override
  _PictureQualityScreenState createState() => _PictureQualityScreenState();
}

class _PictureQualityScreenState extends State<PictureQualityScreen> {
  bool low = false;
  bool med = true;
  bool high = false; 
  bool hd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              low = true;
                              med = false;
                              high = false;
                              hd = false;
                            });
                          },
                          child: Container(
                            child: ListTile(
                              dense: true,
                              title: Text(
                                'Low',
                                style: GoogleFonts.nunito(fontSize: 16),
                              ),
                              trailing: low
                                  ? Icon(Icons.check)
                                  : Container(
                                      child: Text(''),
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.01,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              low = false;
                              med = true;
                              high = false;
                              hd = false;
                            });
                          },
                          child: Container(
                            child: ListTile(
                                dense: true,
                                title: Text(
                                  'Medium',
                                  style: GoogleFonts.nunito(fontSize: 16),
                                ),
                                trailing: med ? Icon(Icons.check) : Text('')),
                          ),
                        ),
                        SizedBox(
                          height: 0.01,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              low = false;
                              med = false;
                              high = true;
                              hd = false;
                            });
                          },
                          child: Container(
                            child: ListTile(
                                dense: true,
                                title: Text(
                                  'High',
                                  style: GoogleFonts.nunito(fontSize: 16),
                                ),
                                trailing: high
                                    ? Icon(Icons.check)
                                    : Container(
                                        child: Text(''),
                                      )),
                          ),
                        ),
                        SizedBox(
                          height: 0.01,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              low = false;
                              med = false;
                              high = false;
                              hd = true;
                            });
                          },
                          child: Container(
                            child: ListTile(
                                dense: true,
                                title: Text(
                                  'HD',
                                  style: GoogleFonts.nunito(fontSize: 16),
                                ),
                                trailing: hd
                                    ? Icon(Icons.check)
                                    : Container(
                                        child: Text(''),
                                      )),
                          ),
                        ),
                        SizedBox(
                          height: 0.01,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
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
                            child: SvgPicture.asset(
                              "assets/images/Group 131.svg",
                              matchTextDirection: true,
                              allowDrawingOutsideViewBox: false,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        Text(
                          'Picture Quality',
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
            )
          ],
        ),
      ),
    );
  }
}

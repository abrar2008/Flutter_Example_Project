import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FaqsScreen extends StatefulWidget {
  @override
  _FaqsScreenState createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                // padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.09,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider(),
                      ),
                      ListTile(
                        // dense: true,
                        title: Text(
                          'How to scan?',
                          style: GoogleFonts.nunito(fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider(),
                      ),
                      ListTile(
                        // dense: true,
                        title: Text(
                          'How to scan?',
                          style: GoogleFonts.nunito(fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider(),
                      ),
                      ListTile(
                        // dense: true,
                        title: Text(
                          'How to scan?',
                          style: GoogleFonts.nunito(fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider(),
                      ),
                      ListTile(
                        // dense: true,
                        title: Text(
                          'How to scan?',
                          style: GoogleFonts.nunito(fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider(),
                      ),
                      ListTile(
                        // dense: true,
                        title: Text(
                          'How to scan?',
                          style: GoogleFonts.nunito(fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider(),
                      ),
                      ListTile(
                        // dense: true,
                        title: Text(
                          'How to scan?',
                          style: GoogleFonts.nunito(fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider(),
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
                      'FAQ\'s',
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

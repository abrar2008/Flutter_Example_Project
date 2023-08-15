import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ComputerConnect extends StatefulWidget {
  ComputerConnect({Key key}) : super(key: key);

  @override
  _ComputerConnectState createState() => _ComputerConnectState();
}

class _ComputerConnectState extends State<ComputerConnect> {
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset('assets/images2/Ellipse 81.svg'),
                          SvgPicture.asset('assets/images2/Ellipse 80.svg'),
                          SvgPicture.asset('assets/images2/Group 252.svg'),
                        ],
                      ),
                      Text(
                        "Waiting...",
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "Open your computer browser and enter",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "below address:",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images2/Rectangle 270.png'),
                              fit: BoxFit.fill),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "http://john-312-ru",
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
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
                      'Connect to Computer',
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

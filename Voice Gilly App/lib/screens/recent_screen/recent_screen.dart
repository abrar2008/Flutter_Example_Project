import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modalSheet1.dart';

class RecentScreen extends StatefulWidget {
  @override
  _RecentScreenState createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool showRecents = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/Mask Group 12.png"),
                                Text(
                                  "Ricardo",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "15, Feb 2020",
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    "assets/images/jade-scarlato-ozznFZJo0Ms-unsplash.png"),
                                Text(
                                  "Sand pot",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "25,Feb 2020",
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            // decoration: BoxDecoration(
                            //   image: DecorationImage(
                            //     image: AssetImage(
                            //         "assets/images/Mask Group 14.png"),
                            //     scale: 1,
                            //     fit: BoxFit.fitHeight,
                            //   ),
                            // ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/Mask Group 14.png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red[400],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                // Center(
                                //   child:
                                // ),
                                Text(
                                  "Subramani",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "15, Feb 2020",
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    "assets/images/jade-scarlato-ozznFZJo0Ms-unsplash.png"),
                                Text(
                                  "Sand pot",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "25,Feb 2020",
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    "assets/images/baylee-gramling-7kGa4EvmiVE-unsplash.png"),
                                Text(
                                  "Ricardo",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "15, Feb 2020",
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    "assets/images/eddie-pan-NR81BgGkmpM-unsplash.png"),
                                Text(
                                  "Sand pot",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "25,Feb 2020",
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
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
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Icon(
                                Icons.tune,
                              ),
                            ),
                          ),
                          onTap: () {
                            _createBottomSheet();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Icon(Icons.list),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.07),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: SvgPicture.asset(
                                    "assets/images/Select.svg",
                                    // height: 20,
                                    // width: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Recents",
                            style: GoogleFonts.nunito(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _createBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (_) => ModalSheet1(),
    );
  }
}

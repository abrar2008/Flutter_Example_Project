import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/clean_and_analytics_screen/junkfiles.dart';
import 'package:guily_app/widgets/colors.dart';
import 'duplicate_files.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CleanAndAnalyticsScreen extends StatefulWidget {
  CleanAndAnalyticsScreen({Key key}) : super(key: key);

  @override
  _CleanAndAnalyticsScreenState createState() =>
      _CleanAndAnalyticsScreenState();
}

class _CleanAndAnalyticsScreenState extends State<CleanAndAnalyticsScreen> {
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  Color c = Color.fromRGBO(244, 235, 251, 1);
  Color c1 = Color.fromRGBO(255, 246, 229, 1);
  Color c2 = Color.fromRGBO(242, 242, 242, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorTheme.color_theme_background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceHeight(context) * 0.07,
                          left: deviceWidth(context) * 0.07),
                      child: Text(
                        'Clean & anylatics',
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: deviceHeight(context) * 0.07,
                    left: deviceWidth(context) * 0.07),
                child: Card(
                  color: ColorTheme.color_theme_background,
                  elevation: 0,
                  child: Row(
                    children: <Widget>[
                      SvgPicture.asset('assets/images2/Group 206.svg'),
                      Padding(
                        padding:
                            EdgeInsets.only(left: deviceWidth(context) * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "137",
                                  style: GoogleFonts.roboto(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  " GB Used",
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Stack(
                              children: [
                                SvgPicture.asset("assets/images2/Path 263.svg"),
                                SvgPicture.asset(
                                    "assets/images2/Rectangle 252.svg"),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '250',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(" GB total",
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: deviceHeight(context) * 0.02,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: deviceHeight(context) * 0.02,
                                    left: deviceHeight(context) * 0.02,
                                    right: deviceHeight(context) * 0.02,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: c,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: ListTile(
                                      leading: SvgPicture.asset(
                                          "assets/images2/paper.svg"),
                                      title: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Junkfiles()));
                                        },
                                        child: Text("Junk Files",
                                            style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            )),
                                      ),
                                      subtitle:
                                          Text("Clutter that can clean no",
                                              style: GoogleFonts.nunito(
                                                fontSize: 12,
                                                color: Colors.black,
                                              )),
                                      trailing: SvgPicture.asset(
                                          "assets/images2/Path 183.svg"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: deviceHeight(context) * 0.02,
                                    left: deviceHeight(context) * 0.02,
                                    right: deviceHeight(context) * 0.02,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: c1,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    padding: EdgeInsets.all(
                                        MediaQuery.of(context).size.width / 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DuplicateFiles()));
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Duplicate files",
                                              style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          Text("57 items"),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/images2/Mask Group 20.png'),
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/images2/kabo-bCtJ-FrOx1g-unsplash.png'),
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/images2/kabo-sR0cTmQHPug-unsplash.png'),
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/images2/vincent-van-zalinge-vUNQaTtZeOo-unsplash.png'),
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/images2/Group 107.png'),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: deviceHeight(context) * 0.02,
                                    left: deviceHeight(context) * 0.02,
                                    right: deviceHeight(context) * 0.02,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: c2,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    padding: EdgeInsets.all(
                                        MediaQuery.of(context).size.width / 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Download files",
                                            style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Text("657 items"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/Mask Group 30.png'),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/clem-onojeghuo-T6GkCfD1AtM-unsplash.png'),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/Group 22.png'),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/Group 23.png'),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/Group 107.png'),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: deviceHeight(context) * 0.02,
                                    left: deviceHeight(context) * 0.02,
                                    right: deviceHeight(context) * 0.02,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: c2,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    padding: EdgeInsets.all(
                                        MediaQuery.of(context).size.width / 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Large files",
                                            style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Text("345 items"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/Mask Group 20.png'),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/kabo-bCtJ-FrOx1g-unsplash.png'),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/kabo-sR0cTmQHPug-unsplash.png'),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/vincent-van-zalinge-vUNQaTtZeOo-unsplash.png'),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'assets/images2/Group 107.png'),
                                            ),
                                          ],
                                        )
                                      ],
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
                ],
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guily_app/widgets/colors.dart';

class CustomizeFavoriteOrders extends StatefulWidget {
  @override
  _CustomizeFavoriteOrdersState createState() =>
      _CustomizeFavoriteOrdersState();
}

class _CustomizeFavoriteOrdersState extends State<CustomizeFavoriteOrders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      // color: Colors.white,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )),
      padding: EdgeInsets.all(10),

      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images2/Mask Group 12.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ricardo",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "15,Feb 2020",
                            style: GoogleFonts.nunito(fontSize: 12),
                          ),
                          Text(
                            "More info",
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorTheme.color_theme_background),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding:
                  EdgeInsets.only(top: 15.0, left: 10, right: 10, bottom: 15),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images2/Rectangle 172.png",
                    ),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images2/Group 145.svg'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Container(
                      child: Text(
                        "Transfer photos to desktop via Wi-Fi",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListTile(
                      dense: true,
                      leading: SvgPicture.asset('assets/images2/Group 317.svg'),
                      title: Text(
                        "Show In Folder",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )),
                  ListTile(
                      dense: true,
                      leading: SvgPicture.asset('assets/images2/Group 318.svg'),
                      title: Text(
                        "Remove from recents",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.red[300],
                          // color: Color.fromARGB(244, 77, 77, 1)
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ListTile(
                      dense: true,
                      leading: SvgPicture.asset('assets/images2/Group 319.svg'),
                      title: Text(
                        "Email",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )),
                  ListTile(
                      dense: true,
                      leading: SvgPicture.asset('assets/images2/Group 320.svg'),
                      title: Text(
                        "Upload",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )),
                  ListTile(
                      dense: true,
                      leading: SvgPicture.asset('assets/images2/Group 321.svg'),
                      title: Text(
                        "Share",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ListTile(
                      dense: true,
                      leading: SvgPicture.asset('assets/images2/Group 322.svg'),
                      title: Text(
                        "Add to Favourites",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )),
                  ListTile(
                      dense: true,
                      leading: SvgPicture.asset('assets/images2/Group 323.svg'),
                      title: GestureDetector(
                        child: Text(
                          "Mark with colour",
                          style: GoogleFonts.nunito(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          _colorSheet();
                        },
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _colorSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.27,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Choose the colour tag",
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: Image(
                          image: AssetImage('assets/images2/Rectangle 365.png'),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      GestureDetector(
                        child: Image(
                          image: AssetImage('assets/images2/Rectangle 366.png'),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      GestureDetector(
                        child: Image(
                          image: AssetImage('assets/images2/Rectangle 367.png'),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      GestureDetector(
                        child: Image(
                          image: AssetImage('assets/images2/Rectangle 372.png'),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                          image: AssetImage('assets/images2/Rectangle 371.png'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                          image: AssetImage('assets/images2/Rectangle 370.png'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                          image: AssetImage('assets/images2/Rectangle 373.png'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                          image: AssetImage('assets/images2/Rectangle 368.png'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                          image: AssetImage('assets/images2/Rectangle 369.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

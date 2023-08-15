import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ListView extends StatefulWidget {
  ListView({Key key}) : super(key: key);

  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<ListView> {
  _showSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height * 0.9,
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
                  ListTile(
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Group 85.png'),
                        )
                        // SvgPicture.asset("assets/images2/Group 85.svg"),
                      ],
                    ),
                    title: Text(
                      "Email",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Group 87.png'),
                        )
                        // SvgPicture.asset("assets/images2/Group 87.svg"),
                      ],
                    ),
                    title: Text(
                      "Compress",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Group 77.png'),
                        )
                        // SvgPicture.asset("assets/images2/Rectangle 103.svg"),
                      ],
                    ),
                    title: Text(
                      "Duplicate",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Group 81.png'),
                        )
                        // SvgPicture.asset("assets/images2/Group 77.svg"),
                      ],
                    ),
                    title: Text(
                      "New Folder With Selection",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    enabled: false,
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        // SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Group 88.png'),
                        )
                        // SvgPicture.asset("assets/images2/Group 88.svg"),
                      ],
                    ),
                    title: Text(
                      "Convert to PDF",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    enabled: false,
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Group 89.png'),
                        )
                        // SvgPicture.asset("assets/images2/Rectangle 103.svg"),
                      ],
                    ),
                    title: Text(
                      "Merge",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    enabled: false,
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Group 90.png'),
                        )
                        // SvgPicture.asset("assets/images2/Rectangle 103.svg"),
                      ],
                    ),
                    title: Text(
                      "Create Text",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  ListTile(
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Group 92.png'),
                        )
                        // SvgPicture.asset("assets/images2/Rectangle 103.svg"),
                      ],
                    ),
                    title: Text(
                      "Upload",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Group 93.png'),
                        )
                        // SvgPicture.asset("assets/images2/Rectangle 103.svg"),
                      ],
                    ),
                    title: Text(
                      "Share",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  ListTile(
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Path 121.png'),
                        )
                        // SvgPicture.asset("assets/images2/Rectangle 103.svg"),
                      ],
                    ),
                    title: Text(
                      "Add to Favourites",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                        Image(
                          image: AssetImage('assets/images2/Rectangle 134.png'),
                        )
                        // SvgPicture.asset("assets/images2/Rectangle 103.svg"),
                      ],
                    ),
                    title: Text(
                      "Show info",
                      style: GoogleFonts.nunito(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => _showSheet(),
          child: Text("Show"),
        ),
      ),
    );
  }
}

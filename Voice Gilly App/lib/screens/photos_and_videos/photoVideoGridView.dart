import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoAndVideoGridView extends StatefulWidget {
  @override
  _PhotoAndVideoGridViewState createState() => _PhotoAndVideoGridViewState();
}

class _PhotoAndVideoGridViewState extends State<PhotoAndVideoGridView> {
  bool listView = false;
  bool gridView = true;
  List<String> assetNames = <String>[
    // 'assets/notfound.svg', // uncomment to test an asset that doesn't exist.
    'assets/images/Recents.png',
    'assets/images/Favorites.png',
    'assets/images/Videos.png',
    'assets/images/Livephotos.png',
    'assets/images/Wallpaper.png',
    'assets/images/Outshoot.png',
  ];
  List categories = [
    'Recents',
    'Favorites',
    'Videos',
    'Live Photos',
    'Wallpaper',
    'Outshoot',
  ];
  List svgImages = [];
  List items = [
    '2288 items',
    '11 items',
    '298 items',
    '120 items',
    '22 items',
    '11 items',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.2,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    // padding: EdgeInsets.all(10),
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
                  'Photos & videos',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Transfer.png"),
                ),
              ),
              child: Image.asset("assets/images/Transfer.png"),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: GridView.count(
              // primary: true,
              crossAxisCount: 2,
              // padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              children: List.generate(6, (index) {
                return Center(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            assetNames[index],
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.44,
                          ),
                        ),
                        Text(
                          categories[index],
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          items[index],
                          style: GoogleFonts.nunito(
                            fontSize: 12,
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

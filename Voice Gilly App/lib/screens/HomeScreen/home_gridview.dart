import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:guily_app/widgets/home_app_bar.dart';
import 'package:guily_app/screens/HomeScreen/home_listView.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guily_app/widgets/menu/sort_menu.dart';

class HomeGridView extends StatefulWidget {
  @override
  _HomeGridViewState createState() => _HomeGridViewState();
}

// ,

class _HomeGridViewState extends State<HomeGridView> {
  bool settings = false;
  String atoz = "atoz",
      ztoa = "ztoa",
      newest = "newest",
      oldest = "oldest",
      smallsize = "smallsize",
      largesize = "largesize";
  Widget customCard(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Card(
            color: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(40),
                topRight: const Radius.circular(40),
              ),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width,
              // padding: EdgeInsets.only(top: 70, left: 10, right: 10),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // SlidingUpPanelController panelController = SlidingUpPanelController();

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ColorTheme.color_theme_background,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: '',
              activeIcon: Icon(
                Icons.home,
                color: ColorTheme.color_theme_background,
                size: 30,
              ),
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: '',
              activeIcon: Icon(
                Icons.timer,
                color: ColorTheme.color_theme_background,
              ),
              icon: Icon(
                Icons.timer,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: ' ',
              activeIcon: Icon(
                Icons.add_box_outlined,
                color: ColorTheme.color_theme_background,
              ),
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: ' ',
              activeIcon: Icon(
                Icons.wifi,
                color: ColorTheme.color_theme_background,
              ),
              icon: Icon(
                Icons.wifi,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: ' ',
              activeIcon: Icon(
                Icons.signal_cellular_alt,
                color: ColorTheme.color_theme_background,
              ),
              icon: Icon(
                Icons.signal_cellular_alt,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  buildGrid(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.18,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(0),
              decoration:
                  BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.settings,
                          size: 25,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          //sort_menu(context);
                          // sort_menu(context);
                          // setState(() {
                          //   if (settings) {
                          //     settings = false;
                          //   } else {
                          //     settings = true;
                          //   }
                          // });
                          // print(settings);
                        },
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeListView()),
                                      (route) => false);
                                  // print("settings icons...");
                                },
                                child: SvgPicture.asset(
                                  "assets/images/Group 73.svg",
                                  // height: 20,
                                  // width: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Sort_menu(context);
                                  print("settings icons");
                                },
                                child: SvgPicture.asset(
                                  "assets/images/Group 72.svg",
                                  // height: 20,
                                  // width: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                                left: 8,
                                right: 10,
                                bottom: 8,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  print("settings icons");
                                },
                                child: SvgPicture.asset(
                                  "assets/images/Select.svg",
                                  // height: 20,
                                  // width: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  buildHome(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildGridview(BuildContext context) {
  //   return GridView.builder(
  //     itemCount: 10,
  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount:
  //             (MediaQuery.of(context).orientation == Orientation.portrait)
  //                 ? 2
  //                 : 3),
  //     itemBuilder: (BuildContext context, int index) {
  //       return new Card(
  //         child: new GridTile(
  //           footer: new Text("data[index]['name']"),
  //           child: new Text(
  //               "data[index]['image']"), //just for testing, will fill with image later
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget buildGrid() {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Firstt Line
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/Rectangle 11.png",
                          ),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/images/folder_1.svg",
                        fit: BoxFit.none,
                        // height: 50,
                        // width: 50,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Photos & videos",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                              ),
                            ],
                          ),
                          Text("3471 items",
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
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/Rectangle 12.png",
                          ),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/images/youtube.svg",
                        fit: BoxFit.none,
                        // height: 50,
                        // width: 50,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Favorite videos",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                              ),
                            ],
                          ),
                          Text(
                            "13 items",
                            style: GoogleFonts.roboto(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          //Second Line
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.24,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/Rectangle 28.png",
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/Mask Group 3.png"),
                                  // fit: BoxFit.contain,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/cayton-heath--hWM8SVsBwA-unsplash.png"),
                                  // fit: BoxFit.contain,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/debby-hudson-1tCQcTjLoRQ-unsplash.png"),
                                  // fit: BoxFit.contain,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Rectangle 29.png"))),
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/Group 13.png"),
                                    // fit: BoxFit.contain,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Photos & videos",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                              ),
                            ],
                          ),
                          Text("3471 items",
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
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/Rectangle 13.png",
                          ),
                        ),
                      ),
                      child: Image(
                        image: AssetImage("assets/images/folder.png"),
                        // fit: BoxFit.contain,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Favorite videos",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                              ),
                            ],
                          ),
                          Text(
                            "13 items",
                            style: GoogleFonts.roboto(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          //ThirdLine
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/Rectangle 28.png",
                          ),
                        ),
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/Closer.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Photos & videos",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                              ),
                            ],
                          ),
                          Text("3471 items",
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
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/Mask Group 1.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Favorite videos",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                              ),
                            ],
                          ),
                          Text(
                            "13 items",
                            style: GoogleFonts.roboto(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
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
    );
  }
}

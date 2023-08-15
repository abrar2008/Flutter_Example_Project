import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guily_app/widgets/home_app_bar.dart';
import 'package:guily_app/widgets/menu/sort_menu.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guily_app/screens/photos_and_videos/photoVideoGridView.dart';
import 'package:google_fonts/google_fonts.dart';

// D:\guily_app\lib\customIcons\my_flutter_app_icons.dart

class HomeListView extends StatefulWidget {
  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  bool gridView = true;
  bool selected = false;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  bool val7 = false;
  bool val8 = false;

  bool listView = false;

  Widget onSelected(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     CupertinoPageRoute(
              //         builder: (context) => PhotoAndVideoGridView()));
            },
            child: ListTile(
              leading: Container(
                  child: Wrap(
                children: [
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
                  SvgPicture.asset("assets/images/folder_1.svg"),
                ],
              )),
              title: Text(
                "Photos & videos",
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '3472 items',
                style: GoogleFonts.nunito(
                  fontSize: 12,
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                ),
              ),
              // trailing: Icon(
              //   Icons.more_horiz,
              //   size: 30,
              //   color: Colors.black,
              // ),
            ),
          ),
          ListTile(
            leading: Container(
              child: Wrap(
                children: [
                  Checkbox(
                      // value: false,
                      value: val2,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(() {
                          val2 = newValue;
                        });
                      }),
                  SvgPicture.asset(
                    "assets/images/youtube.svg",
                  ),
                ],
              ),
            ),

            title: Text(
              "Recent videos",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '13 items',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            // trailing: Icon(
            //   Icons.more_horiz,
            //   size: 30,
            //   color: Colors.black,
            // ),
          ),
          ListTile(
            leading: Container(
              child: Wrap(
                children: [
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
                  Image.asset(
                    "assets/images/Group 21.png",
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                ],
              ),
            ),
            // leading: SvgPicture.asset("assets/images/Group 21.svg"),
            title: Text(
              "iTunes",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '27 items',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            // trailing: Icon(
            //   Icons.more_horiz,
            //   size: 30,
            //   color: Colors.black,
            // ),
          ),
          ListTile(
            leading: Container(
              child: Wrap(
                children: [
                  Checkbox(
                      // value: false,
                      value: val4,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(() {
                          val4 = newValue;
                        });
                      }),
                  SvgPicture.asset("assets/images/folder.svg"),
                ],
              ),
            ), // leading: SvgPicture.asset("assets/images/Group 21.svg"),
            title: Text(
              "Recently deleted",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '13 items',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            // trailing: Icon(
            //   Icons.more_horiz,
            //   size: 30,
            //   color: Colors.black,
            // ),
          ),
          ListTile(
            leading: Container(
              child: Wrap(
                children: [
                  Checkbox(
                      // value: false,
                      value: val5,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(() {
                          val5 = newValue;
                        });
                      }),
                  Image.asset(
                    "assets/images/Mask Group 5.png",
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                ],
              ),
            ),
            // leading: SvgPicture.asset(
            //     "assets/images/Mask Group 5.svg"), // leading: SvgPicture.asset("assets/images/Group 21.svg"),
            title: Text(
              "The Chainsmoker Closer",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '13 items',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            // trailing: Icon(
            //   Icons.more_horiz,
            //   size: 30,
            //   color: Colors.black,
            // ),
          ),
          ListTile(
            leading: Container(
              child: Wrap(
                children: [
                  Checkbox(
                      // value: false,
                      value: val6,
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(() {
                          val6 = newValue;
                        });
                      }),
                  Image.asset(
                    "assets/images/Mask Group 6.png",
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                ],
              ),
            ),
            // leading: SvgPicture.asset(
            //     "assets/images/Mask Group 5.svg"), // leading: SvgPicture.asset("assets/images/Group 21.svg"),
            title: Text(
              "Plant photoshoot",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '25, Feb 2020',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            // trailing: Icon(
            //   Icons.more_horiz,
            //   size: 30,
            //   color: Colors.black,
            // ),
          ),
          ListTile(
            leading: Container(
                child: Wrap(
              children: [
                Checkbox(
                    // value: false,
                    value: val7,
                    activeColor: Colors.black,
                    checkColor: Colors.white,
                    onChanged: (bool newValue) {
                      setState(() {
                        val7 = newValue;
                      });
                    }),
                SvgPicture.asset("assets/images/Group 22.svg"),
              ],
            )),
            title: Text(
              "Quotes",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '25, Feb 2020',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            // trailing: Icon(
            //   Icons.more_horiz,
            //   size: 30,
            //   color: Colors.black,
            // ),
          ),
          ListTile(
            leading: Container(
                child: Wrap(
              children: [
                Checkbox(
                    // value: false,
                    value: val8,
                    activeColor: Colors.black,
                    checkColor: Colors.white,
                    onChanged: (bool newValue) {
                      setState(() {
                        val8 = newValue;
                      });
                    }),
                SvgPicture.asset("assets/images/Group 23.svg"),
              ],
            )),
            title: Text(
              "Business management",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '21, Feb 2020',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            // trailing: Icon(
            //   Icons.more_horiz,
            //   size: 30,
            //   color: Colors.black,
            // ),
          ),
        ],
      ),
    );
  }

  Widget onNotSelected(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => PhotoAndVideoGridView()));
            },
            child: ListTile(
              leading: SvgPicture.asset("assets/images/folder_1.svg"),
              title: Text(
                "Photos & videos",
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '3472 items',
                style: GoogleFonts.nunito(
                  fontSize: 12,
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: Icon(
                Icons.more_horiz,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/images/youtube.svg"),
            title: Text(
              "Recent videos",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '13 items',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/Group 21.png",
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.12,
            ),
            // leading: SvgPicture.asset("assets/images/Group 21.svg"),
            title: Text(
              "iTunes",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '27 items',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
                "assets/images/folder.svg"), // leading: SvgPicture.asset("assets/images/Group 21.svg"),
            title: Text(
              "Recently deleted",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '13 items',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/Mask Group 5.png",
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.12,
            ),
            // leading: SvgPicture.asset(
            //     "assets/images/Mask Group 5.svg"), // leading: SvgPicture.asset("assets/images/Group 21.svg"),
            title: Text(
              "The Chainsmoker Closer",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '13 items',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/Mask Group 6.png",
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.12,
            ),
            // leading: SvgPicture.asset(
            //     "assets/images/Mask Group 5.svg"), // leading: SvgPicture.asset("assets/images/Group 21.svg"),
            title: Text(
              "Plant photoshoot",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '25, Feb 2020',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/images/Group 22.svg"),
            title: Text(
              "Quotes",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '25, Feb 2020',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/images/Group 23.svg"),
            title: Text(
              "Business management",
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '21, Feb 2020',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget createHomeListView(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
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
                  onPressed: () {},
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.pushAndRemoveUntil(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomeGridView()),
                            //     (route) => false);

                            setState(() {
                              if (listView) {
                                listView = false;
                                build(context);
                              } else {
                                listView = true;
                                build(context);
                              }
                            });
                          },
                          child: SvgPicture.asset(
                            "assets/images/Group 14.svg",
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
                            print("settings icons...");
                          },
                          child: SvgPicture.asset(
                            "assets/images/Group 72.svg",
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
                            // print("settings icons");
                            setState(() {
                              if (selected) {
                                selected = false;
                              } else {
                                selected = true;
                              }
                              print(selected);
                            });
                            // Navigator.push(
                            //     context,
                            //     CupertinoPageRoute(
                            //         builder: (context) =>
                            //             HomeListViewSelection()));
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
                )
              ],
            ),
            buildHome(context),
          ],
        ),
      ),
    );
  }

  Widget buildGridView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // alignment: Alignment.topCenter,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          buildGrid(context),
          // buildGrid(),
        ],
      ),
    );
    // return Stack(
    //   children: [
    //     SingleChildScrollView(
    //       child: Column(
    //         // mainAxisAlignment: MainAxisAlignment.center,
    //         // crossAxisAlignment: CrossAxisAlignment.start,
    //         // alignment: Alignment.topCenter,
    //         children: [
    //           SizedBox(height: MediaQuery.of(context).size.height * 0.2),
    //           buildGrid(context),
    //           // buildGrid(),
    //         ],
    //       ),
    //     ),
    //     Container(
    //       width: double.infinity,
    //       height: MediaQuery.of(context).size.height * 0.18,
    //       alignment: Alignment.topCenter,
    //       padding: EdgeInsets.all(0),
    //       decoration:
    //           BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               IconButton(
    //                 icon: Icon(
    //                   Icons.settings,
    //                   size: 25,
    //                   color: Colors.black,
    //                 ),
    //                 onPressed: () {
    //                   //sort_menu(context);
    //                   // sort_menu(context);
    //                   // setState(() {
    //                   //   if (settings) {
    //                   //     settings = false;
    //                   //   } else {
    //                   //     settings = true;
    //                   //   }
    //                   // });
    //                   // print(settings);
    //                 },
    //               ),
    //               Container(
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: GestureDetector(
    //                         onTap: () {
    //                           setState(() {
    //                             if (listView) {
    //                               listView = false;
    //                               // build(context);
    //                             } else {
    //                               listView = true;
    //                               // build(context);
    //                             }
    //                           });
    //                           print("sadasd");
    //                         },
    //                         child: SvgPicture.asset(
    //                           "assets/images/Group 73.svg",
    //                           // height: 20,
    //                           // width: 20,
    //                         ),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: GestureDetector(
    //                         onTap: () {
    //                           sort_menu(context);
    //                           print("settings icons");
    //                         },
    //                         child: SvgPicture.asset(
    //                           "assets/images/Group 72.svg",
    //                           // height: 20,
    //                           // width: 20,
    //                         ),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(
    //                         top: 8.0,
    //                         left: 8,
    //                         right: 10,
    //                         bottom: 8,
    //                       ),
    //                       child: GestureDetector(
    //                         onTap: () {
    //                           print("settings icons");
    //                         },
    //                         child: SvgPicture.asset(
    //                           "assets/images/Select.svg",
    //                           // height: 20,
    //                           // width: 20,
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //           buildHome(context),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }

  Widget bottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      // iconSize: 40,

      elevation: 10,
      // selectedItemColor: ColorTheme.color_theme_background,
      unselectedIconTheme: IconThemeData(
        size: 20,
      ),
      selectedIconTheme: IconThemeData(
        size: 20,
      ),
      selectedLabelStyle: GoogleFonts.nunito(
        fontSize: 10,
        color: Colors.black,
      ),
      unselectedLabelStyle: GoogleFonts.nunito(
        fontSize: 10,
        color: Colors.black,
      ),
      showUnselectedLabels: true,
      showSelectedLabels: true,

      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          label: 'Copy',
          icon: SvgPicture.asset(
            "assets/images/copy.svg",
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          label: 'Move',
          icon: SvgPicture.asset(
            "assets/images/move.svg",
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          label: 'Delete',
          icon: SvgPicture.asset(
            "assets/images/delete.svg",
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          label: 'Rename',
          icon: SvgPicture.asset(
            "assets/images/rename.svg",
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          label: 'More',
          icon: SvgPicture.asset(
            "assets/images/more.svg",

            // height: 10, //width: 10,
            // colorBlendMode: BlendMode.clear,
            // color: Colors.blue,
            // color: Colors.red,
            // colorBlendMode: BlendMode.darken,
          ),
        ),
      ],
    );
  }

  Widget buildGrid(BuildContext context) {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            selected ? onSelected(context) : onNotSelected(context),
            // listView ? buildGridView(context) : createHomeListView(context),
            // Column(
            //   children: [],
            // )
            // if(listView){
            //   buildListView(context),
            // }, else{
            //   buildGridView(context)
            // }
            // listView ? buildListView(context) : buildGridView(context),
          ],
        ),
      ),
    );
  }
}

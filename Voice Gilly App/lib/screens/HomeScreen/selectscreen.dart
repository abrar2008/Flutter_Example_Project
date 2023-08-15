import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guily_app/widgets/home_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:guily_app/screens/settings_screen/settings.dart';
import 'package:guily_app/widgets/menu/sort_menu.dart';

class SelectScreen extends StatefulWidget {
  final bool listView;
  const SelectScreen({Key key, this.listView}) : super(key: key);

  @override
  _SelectScreenState createState() =>
      _SelectScreenState(listViewEnable: listView);
}

class _SelectScreenState extends State<SelectScreen> {
  bool listViewEnable;
  _SelectScreenState({this.listViewEnable});
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  bool val7 = false;
  bool val8 = false;
  // bool listView = widget.listView;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: listViewEnable ? onSelected(context) : buildGrid2(context),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.18,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.white),
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
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => Settings()));
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
                                    // Navigator.pushAndRemoveUntil(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             HomeGridView()),
                                    //     (route) => false);

                                    setState(() {
                                      if (listViewEnable) {
                                        listViewEnable = false;
                                        // build(context);
                                      } else {
                                        listViewEnable = true;
                                        // build(context);
                                      }
                                    });
                                  },
                                  child: listViewEnable
                                      ? SvgPicture.asset(
                                          "assets/images/Group 14.svg",
                                          // height: 20,
                                          // width: 20,
                                        )
                                      : SvgPicture.asset(
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
                                    // Navigator.pushNamed(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => HomeScreen(),
                                    //     ));
                                    Navigator.pop(context);
                                    // Navigator.pushNamedAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route) => false)
                                    // print("settings icons");
                                    // setState(() {
                                    //   if (selected) {
                                    //     selected = false;
                                    //   } else {
                                    //     selected = true;
                                    //   }
                                    //   print(selected);
                                    // });
                                    // if(){
                                    // Navigator.push(
                                    //     context,
                                    //     CupertinoPageRoute(
                                    //         builder: (context) => SelectScreen(
                                    //               listView: listView,
                                    //             )));
                                    // }
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
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          // iconSize: 40,
          onTap: (index) {
            if (index == 0) {
              print('copy');
              // Navigator.push(context, MaterialPageRoute(builder: (context) => ,))
            } else if (index == 1) {
              print('move');
            } else if (index == 2) {
              print('delete');
            } else if (index == 3) {
              print('rename');
            } else if (index == 4) {
              print('more');
              _showSheet();
            }
          },
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listSelected(BuildContext context) {
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

  Widget buildGrid2(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
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
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "iTunes",
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "27 items",
                              style: GoogleFonts.roboto(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            trailing: Checkbox(
                                // value: false,
                                value: val3,
                                activeColor: Colors.black,
                                checkColor: Colors.white,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    val3 = newValue;
                                  });
                                }),
                          )
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
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "Recently deleted",
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "13 items",
                              style: GoogleFonts.roboto(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            trailing: Checkbox(
                                // value: false,
                                value: val4,
                                activeColor: Colors.black,
                                checkColor: Colors.white,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    val4 = newValue;
                                  });
                                }),
                          )
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
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "The Chainsmoker closer",
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "25,Feb 2020",
                              style: GoogleFonts.roboto(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            trailing: Checkbox(
                                // value: false,
                                value: val5,
                                activeColor: Colors.black,
                                checkColor: Colors.white,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    val5 = newValue;
                                  });
                                }),
                          )
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
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "iTunes",
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "27 items",
                              style: GoogleFonts.roboto(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            trailing: Checkbox(
                                // value: false,
                                value: val6,
                                activeColor: Colors.black,
                                checkColor: Colors.white,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    val6 = newValue;
                                  });
                                }),
                          )
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
                  SvgPicture.asset("assets/images/settingicons/folder.svg"),
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
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guily_app/screens/settings_screen/settings.dart';
import 'package:flutter/cupertino.dart';

class MainScreenGiuly extends StatefulWidget {
  @override
  _MainScreenGiulyState createState() => _MainScreenGiulyState();
}

class _MainScreenGiulyState extends State<MainScreenGiuly> {
  String text =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
  String text2 = "Lorem ipsum dolor sit amet";

  String transcription = '';

  //String _currentLocale = 'en_US';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => Settings(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.settings,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Hello from Giuly ",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              Icons.lightbulb,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            showMenu(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.menu,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Services & your privacy",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.007,
                            ),
                            Text(
                              text,
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                RaisedButton(
                                  padding: EdgeInsets.all(0),
                                  color: Colors.white,
                                  highlightElevation: 0,
                                  // shape: BoxShape.none,
                                  elevation: 0,
                                  onPressed: () {},
                                  child: Text(
                                    "Learn more",
                                    style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                RaisedButton(
                                  padding: EdgeInsets.all(0),
                                  color: Colors.white,
                                  highlightElevation: 0,
                                  elevation: 0,
                                  onPressed: () {},
                                  child: Text(
                                    "Got it!",
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                // SizedBox(
                                //   width: MediaQuery.of(context).size.width * 0.05,
                                // ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                          top: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Did you know?",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.07,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        text2,
                                        style: GoogleFonts.nunito(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      Text(
                                        "Add a shortcut on your home screen to get here fast.",
                                        style: GoogleFonts.nunito(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      RaisedButton(
                                        padding: EdgeInsets.all(0),
                                        color: Colors.blue,
                                        highlightElevation: 0,
                                        // shape: BoxShape.none,
                                        elevation: 0,
                                        onPressed: () {},
                                        child: Text(
                                          "Learn more",
                                          style: GoogleFonts.nunito(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      RaisedButton(
                                        padding: EdgeInsets.all(0),
                                        color: Colors.white,
                                        highlightElevation: 0,
                                        elevation: 0,
                                        onPressed: () {},
                                        child: Text(
                                          "No, thanks!",
                                          style: GoogleFonts.nunito(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: SvgPicture.network(
                                    'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FIcon%20open-home.svg?alt=media&token=fbf9ece4-9e74-429e-bd7f-c67f062fb57f',
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.09,
                    // decoration: BoxDecoration(
                    //   shape: BoxShape.rectangle,
                    //   borderRadius: BorderRadius.circular(10),
                    //   color: Colors.white,
                    // ),
                    // padding: EdgeInsets.all(10),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.text_snippet,
                            color: Colors.blue,
                            size: 25,
                          ),
                          Icon(
                            Icons.mic,
                            color: Colors.red,
                            size: 30,
                          ),
                          Icon(
                            Icons.speaker,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'OR',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Import directly from",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: RaisedButton(
                          padding: EdgeInsets.all(0),
                          color: Colors.white,
                          highlightElevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 2,
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2Fdropbox-paper.svg?alt=media&token=be7e9d10-90ee-49f5-aaaa-9eb5fd0cb0c9',
                                  height: 25,
                                  width: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    "Dropbox",
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                    // textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: RaisedButton(
                          padding: EdgeInsets.all(0),
                          color: Colors.white,
                          highlightElevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 2,
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2Fgoogle-drive.svg?alt=media&token=40020fe7-8e39-4dca-87f1-a6bab4444426',
                                  height: 25,
                                  width: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    "Drive",
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: RaisedButton(
                          padding: EdgeInsets.all(0),
                          color: Colors.white,
                          highlightElevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 2,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.network(
                                'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2Ficloud.svg?alt=media&token=1fd12c34-be18-4677-94cf-d45fd1a206ca',
                                height: 25,
                                width: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  "iCloud",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showMenu(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        // isDismissible: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(10),
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
                  // Divider(
                  //   color: Colors.grey[300],
                  //   height: 40,
                  //   endIndent: 140,
                  //   indent: 140,
                  //   thickness: 2,
                  // ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Import",
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 241, 213, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.6,
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "From Photos",
                                      style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("357 items",
                                        style: GoogleFonts.nunito(
                                          fontSize: 11,
                                        )),
                                  ],
                                ),
                                // SizedBox(
                                //     height: MediaQuery.of(context).size.height *
                                //         0.05),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image(
                                      image: NetworkImage(
                                          'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FMask%20Group%2020.png?alt=media&token=e83fc766-ee39-48eb-bdad-9717c5a1a3e9'),
                                    ),
                                    Image(
                                      image: NetworkImage(
                                          'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2Fvincent-van-zalinge-vUNQaTtZeOo-unsplash.png?alt=media&token=bb6b199f-3161-4657-9a6c-814fff2e5565'),
                                    ),
                                    Image(
                                      image: NetworkImage(
                                          'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FGroup%20107.png?alt=media&token=3a7e61b5-1209-4837-b98d-961f92a135a7'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(232, 235, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "From Computer",
                                    style: GoogleFonts.nunito(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Connect via adress bar",
                                      style: GoogleFonts.nunito(
                                        fontSize: 11,
                                      )),
                                ],
                              ),
                              Image(
                                image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2Fcomputer.png?alt=media&token=2ec444a4-c1dc-4e16-a0a2-50d1d6792a7e'),
                              ),
                              // SvgPicture.asset(
                              //   'assets/images/computer.svg',
                              //   height:
                              //       MediaQuery.of(context).size.height * 0.05,
                              //   width:
                              //       MediaQuery.of(context).size.width * 0.051,
                              //   fit: BoxFit.none,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              "Create",
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FRectangle%20143.png?alt=media&token=a11b4f80-805f-4a45-bf2b-3bdaf19e4475'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                child: SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2Ffolder.svg?alt=media&token=4f81393b-efba-4ab2-a823-4ab9c3b9a124',
                                  fit: BoxFit.none,
                                ),
                              ),
                              Text("New"),
                              Text('Folder')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FRectangle%20145.png?alt=media&token=3e8d616d-e75a-4fb0-a23b-f27f6a4bc19c'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                child: SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FGroup%20111.svg?alt=media&token=ccfbfb5a-0ff9-4d25-b2f5-6018c5265e10',
                                  fit: BoxFit.none,
                                ),
                              ),
                              // Stack(
                              //   children: [
                              //     SvgPicture.asset(
                              //         'assets/images/Rectangle 145.svg'),
                              //     Center(
                              //         child: SvgPicture.asset(
                              //             'assets/images/Group 111.svg')),
                              //   ],
                              // ),
                              Text("Scan"),
                              Text('Document')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FRectangle%20144.png?alt=media&token=c98287a1-115e-4a5d-bae6-76eb20a1e342'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                child: SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FPath%20148.svg?alt=media&token=8f6c1394-4a6e-4bae-a3bc-3d1feeeefbb4',
                                  fit: BoxFit.none,
                                ),
                              ),
                              // Stack(
                              //   children: [
                              //     SvgPicture.asset(
                              //         'assets/images/Rectangle 144.svg'),
                              //     Center(
                              //         child: SvgPicture.asset(
                              //             'assets/images/Path 148.svg')),
                              //   ],
                              // ),
                              Text("Create"),
                              Text('PDF')
                            ],
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.network(
                                      'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FGroup%20324.svg?alt=media&token=075b0364-33bd-49f0-96bb-83d3b7db4a7a'),
                                ],
                              ),
                              Text("Take"),
                              Text('Photos')
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Import from cloud storage",
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(232, 235, 255, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40))),
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    color: Color.fromRGBO(232, 235, 255, 1),
                                    onPressed: () {
                                      // ttext;
                                    },
                                    child: Row(
                                      children: [
                                        Image(
                                          image: NetworkImage(
                                              'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FImage%209.png?alt=media&token=a2e2f569-fe7a-4e3c-a06e-b6fb933aa24c'),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Dropbox")
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    color: Color.fromRGBO(212, 255, 221, 1),
                                    onPressed: () {
                                      // ttext;
                                    },
                                    child: Row(
                                      children: [
                                        Image(
                                          image: NetworkImage(
                                              'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FImage%2010.png?alt=media&token=38757767-fc11-442c-95d3-0d19872ca722'),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Google Drive")
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                // color: Color.fromRGBO(242, 242, 242, 1),

                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.93,
                                child: RaisedButton(
                                  color: Color.fromRGBO(242, 242, 242, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  onPressed: () {
                                    // ttext;
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images2%2FGroup%20114.png?alt=media&token=27ae9454-0af4-4bf9-a6e1-470261be86c3'),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      Text("Other Cloud Storage")
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}

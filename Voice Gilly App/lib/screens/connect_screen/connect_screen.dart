import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'computer_connect.dart';

class ConnectionScreen extends StatefulWidget {
  @override
  _ConnectionScreenState createState() => _ConnectionScreenState();
}

class _ConnectionScreenState extends State<ConnectionScreen> {
  String ttext = '';
  final List connectionLists = [
    {'image': 'assets/images/box.png', 'title': 'Box'},
    {'image': 'assets/images/onedrive.png', 'title': 'OneDrive'},
    {'image': 'assets/images/ftp (1).png', 'title': 'FTP Server'},
    {'image': 'assets/images/ftp - Copy.png', 'title': 'SFTP Server'},
    {'image': 'assets/images/windows.png', 'title': 'Windows SMB'},
  ];

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images2/Rectangle 139.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => ComputerConnect()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'From Computer',
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Connect computer via address bar",
                                  style: GoogleFonts.nunito(fontSize: 11)),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/images2/computer.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Container(
                    child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text(
                            "Import from cloud storage",
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.w700),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromRGBO(232, 235, 255, 1),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images2/Image 9.png'),
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
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromRGBO(212, 255, 221, 1),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images2/Image 10.png'),
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Add Connection",
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          ListTile(
                            leading: Image(
                              image: AssetImage('assets/images2/Image 18.png'),
                            ),
                            title: Text(
                              "Box",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing:
                                SvgPicture.asset('assets/images2/Path 160.svg'),
                            dense: true,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          ListTile(
                            leading: Image(
                              image: AssetImage('assets/images2/Image 19.png'),
                            ),
                            dense: true,
                            // SvgPicture.asset('assets/images/Image 18.svg'),
                            title: Text(
                              "OneDrive",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing:
                                SvgPicture.asset('assets/images2/Path 160.svg'),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          ListTile(
                            dense: true,
                            leading: Image(
                              image: AssetImage('assets/images2/ftp (1).png'),
                            ),
                            // SvgPicture.asset('assets/images/Image 18.svg'),
                            title: Text(
                              "FTP Server",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing:
                                SvgPicture.asset('assets/images2/Path 160.svg'),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          ListTile(
                            dense: true,
                            leading: Image(
                              image: AssetImage('assets/images2/ftp.png'),
                            ),
                            // SvgPicture.asset('assets/images/Image 18.svg'),
                            title: Text(
                              "SFTP Server",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing:
                                SvgPicture.asset('assets/images2/Path 160.svg'),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          ListTile(
                            dense: true,
                            leading: Image(
                              image: AssetImage('assets/images2/Image 20.png'),
                            ),
                            // SvgPicture.asset('assets/images/Image 18.svg'),
                            title: Text(
                              "Windows SMB",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing:
                                SvgPicture.asset('assets/images2/Path 160.svg'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
              ]),
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
                        // height: 10,
                        // width: 10,
                        // height: MediaQuery.of(context).size.height * 0.05,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Text(
                    'Connections',
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
      )),
    );
  }
}

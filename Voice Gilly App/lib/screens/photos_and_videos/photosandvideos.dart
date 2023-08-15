import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'photovideoslider.dart';

class PhotoVideo extends StatefulWidget {
  PhotoVideo({Key key}) : super(key: key);

  @override
  _PhotoVideoState createState() => _PhotoVideoState();
}

class _PhotoVideoState extends State<PhotoVideo> {
  @override
  void _sliderSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Folder info",
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        SvgPicture.asset('assets/images2/folder.svg'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          "Photos and videos",
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    // alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "File information",
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Text(
                                "Type",
                                style: GoogleFonts.roboto(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Text(
                              'Folder',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              // height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Text(
                                "Size",
                                style: GoogleFonts.roboto(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Text(
                              '2 GB,items(3471)',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              // height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Text(
                                "Where",
                                style: GoogleFonts.roboto(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Text(
                              'My files',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              // height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Text(
                                "Created",
                                style: GoogleFonts.roboto(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Text(
                              'Feb 13,2019 at 2:25 am',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          children: [
                            Container(
                              // height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Text(
                                "Modified",
                                style: GoogleFonts.roboto(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Text(
                              'Aug, 2020 at 2:25',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.all(12.0),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images2/Rectangle 172.png",
                            ),
                            fit: BoxFit.fill),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/images2/Group 145.svg'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            // Padding(
                            // padding: const EdgeInsets.all(8.0),
                            // child:
                            Text(
                              "Transfer photos to desktop via Wi-Fi",
                              style: GoogleFonts.nunito(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
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
                          // SvgPicture.asset("assets/images2/Group 85.svg"),
                        ],
                      ),
                      title: Text(
                        "Copy",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    ListTile(
                      dense: true,
                      leading: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/images2/Ellipse 22.svg"),

                          SvgPicture.asset("assets/images2/Group 77.svg"),
                          // Image(
                          //   image: AssetImage('assets/images2/Group 77.png'),
                          // )
                          // SvgPicture.asset("assets/images2/Group 87.svg"),
                        ],
                      ),
                      title: Text(
                        "Move",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    ListTile(
                      dense: true,
                      leading: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/images2/Ellipse 22.svg"),
                          Image(
                            image: AssetImage('assets/images2/Group 79.png'),
                          )
                          // SvgPicture.asset("assets/images2/Rectangle 103.svg"),
                        ],
                      ),
                      title: Text(
                        "Rename",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    ListTile(
                      dense: true,
                      leading: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/images2/Ellipse 59.svg"),
                          Image(
                            image: AssetImage('assets/images2/Group 144.png'),
                          )
                          // SvgPicture.asset("assets/images2/Group 77.svg"),
                        ],
                      ),
                      title: Text(
                        "Delete",
                        style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
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
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                // height
                height: MediaQuery.of(context).size.height * 0.09,

                color: Colors.white,
                child: Container(
                  child: ListTile(
                    leading: Wrap(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              "assets/images/Group 131.svg",
                              fit: BoxFit.contain,
                              // matchTextDirection: true,
                              allowDrawingOutsideViewBox: false,
                              // height: 10,
                              // width: 10,
                              // height: MediaQuery.of(context).size.height * 0.05,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Image(
                          image: AssetImage('assets/images2/folder.png'),
                        ),
                      ],
                    ),
                    title: Text(
                      'Photos & Videos',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    subtitle: Text(
                      '2GB, Feb 2019',
                      style: GoogleFonts.roboto(
                        fontSize: 11,
                        color: Colors.black,
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        _sliderSheet();
                      },
                      child: Icon(
                        Icons.more_horiz,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

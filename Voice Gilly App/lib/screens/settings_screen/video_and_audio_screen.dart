import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:guily_app/screens/settings_screen/settings.dart';

class VideoAndAudioScreen extends StatefulWidget {
  @override
  _VideoAndAudioScreenState createState() => _VideoAndAudioScreenState();
}

class _VideoAndAudioScreenState extends State<VideoAndAudioScreen> {
  bool highlightLinks = true;
  bool pageTapZones = true;
  bool showAutomatically = true;
  bool saveAudioPosition = true;
  bool skipStep = true;

  @override
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
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            // height: MediaQuery.of(context).size.height * 0.09,
                            child: Text(
                              'General',
                              // textAlign: TextAlign.start,
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20202.png?alt=media&token=c16637d7-f45e-4d4b-afe2-f9b16c29b1db')),
                                    ),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          hoverColor: Colors.white,
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.skip_previous,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        IconButton(
                                          hoverColor: Colors.white,
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.play_arrow,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        IconButton(
                                          hoverColor: Colors.white,
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.skip_next,
                                            color: Colors.blue,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Container(
                                    child: Text(
                                      'Next/Previous',
                                      // textAlign: TextAlign.start,
                                      style: GoogleFonts.nunito(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20202.png?alt=media&token=c16637d7-f45e-4d4b-afe2-f9b16c29b1db')),
                                    ),
                                    child: Row(
                                      children: [
                                        IconButton(
                                            hoverColor: Colors.white,
                                            onPressed: () {},
                                            icon: SvgPicture.network(
                                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.svg?alt=media&token=d57f4a5a-3bed-41dd-8138-1d21b5fbb1fb')),
                                        IconButton(
                                          hoverColor: Colors.white,
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.pause,
                                            color: Colors.grey[300],
                                          ),
                                        ),
                                        IconButton(
                                            hoverColor: Colors.white,
                                            onPressed: () {},
                                            icon: SvgPicture.network(
                                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20195.svg?alt=media&token=746897be-02b7-478d-8440-2fc18d30c330')
                                            // icon: Icon(
                                            //   Icons.,
                                            //   color: Colors.blue,
                                            // ),
                                            )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Container(
                                    // width:
                                    //     MediaQuery.of(context).size.width * 0.8,
                                    // height: MediaQuery.of(context).size.height * 0.09,
                                    child: Text(
                                      'Forward/Backward',
                                      // textAlign: TextAlign.start,
                                      style: GoogleFonts.nunito(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      // height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                              fit: BoxFit.cover)),
                      child: ListTile(
                        title: Text(
                          "Highlight form field",
                          // textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (pageTapZones) {
                                pageTapZones = false;
                              } else {
                                pageTapZones = true;
                              }
                            });
                          },
                          child: Container(
                            child: CustomSwitchButton(
                                backgroundColor:
                                    pageTapZones ? Colors.blue : Colors.grey,
                                unCheckedColor: Colors.white,
                                animationDuration: Duration(milliseconds: 200),
                                checkedColor: Colors.white,
                                checked: pageTapZones),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (showAutomatically) {
                            showAutomatically = false;
                          } else {
                            showAutomatically = true;
                          }
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        // height: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: showAutomatically
                                  ? NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.png?alt=media&token=db7641eb-1c11-435f-ba5f-9be5c5b0b545')
                                  : NetworkImage(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),

                              // scale: 1.0,
                              fit: BoxFit.cover,
                            )),
                        child: ListTile(
                          title: Text(
                            "Always show",
                            // textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: showAutomatically
                              ? SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%2070.svg?alt=media&token=5666fa6d-f039-4e0f-a5cf-b273a25de863',
                                  // height: 10,
                                  // width: 10,
                                  fit: BoxFit.none,
                                )
                              : Container(
                                  child: Text(""),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                // height
                height: MediaQuery.of(context).size.height * 0.08,

                color: Colors.white,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => Settings()));
                      },
                      child: Container(
                        width: 80,
                        height: 45,
                        color: Colors.transparent,
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: SvgPicture.network(
                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FGroup%20131.svg?alt=media&token=e492c6d8-8e5f-4fe5-8522-d3c4957745a2',
                            matchTextDirection: true,
                            allowDrawingOutsideViewBox: false,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Video & audio player',
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
        ),
      ),
    );
  }
}

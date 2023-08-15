import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_switch_button/custom_switch_button.dart';

import 'package:cloud_firestore/cloud_firestore.dart' as fire;
import 'package:guily_app/screens/settings_screen/settings.dart';

class FileManagerScreen extends StatefulWidget {
  @override
  _FileManagerScreenState createState() => _FileManagerScreenState();
}

class _FileManagerScreenState extends State<FileManagerScreen> {
  bool iOS = true;
  bool scannerPro = false;
  bool fileNameExtension = true;
  bool fileNameExtensionSwitch = false;
  bool showRecents = false;
  bool showPhotos = true;
  @override


  void  adddata() async {
     fire.FirebaseFirestore firestore = fire.FirebaseFirestore.instance;
     await firestore.collection("Filemanger").doc().set({
        "iOS" :iOS,
        "scannerPro":scannerPro,
        "fileNameExtension": fileNameExtension,
        "fileNameExtensionSwitch": fileNameExtensionSwitch,
        "showRecents":showRecents,
        "showPhotos": showPhotos,
});
  }
// fire.CollectionReference filem = fire.FirebaseFirestore.instance.collection('Filemanger').doc();

//   Future<void> addUser() {
    
//     return filem
//         .add({
//            "iOS": iOS,
//           "scannerPro": scannerPro,
//           "fileNameExtension": fileNameExtension,
//           "fileNameExtensionSwitch": fileNameExtensionSwitch,
//           "showRecents": showRecents,
//           "showPhotos": showPhotos,
//         })
//         .then((value) => print(" Added"))
//         .catchError((error) => print("Failed to add user: $error"));
//   }
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          // height: MediaQuery.of(context).size.height * 0.09,
                          child: Text(
                            'Preferred scan technology',
                            // textAlign: TextAlign.start,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (!iOS) {
                                iOS = true;
                                scannerPro = false;
                              }
                            });
                            print(iOS);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            // height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: iOS
                                      ? NetworkImage(
                                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.png?alt=media&token=db7641eb-1c11-435f-ba5f-9be5c5b0b545')
                                      : NetworkImage(
                                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                                  // scale: 1.0,
                                  fit: BoxFit.cover,
                                )),
                            child: ListTile(
                              title: Text(
                                "iOS scanner",
                                // textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              trailing: iOS
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
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (!scannerPro) {
                                scannerPro = true;
                                iOS = false;
                              }
                              print(scannerPro);
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            // height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: scannerPro
                                    ? NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.png?alt=media&token=db7641eb-1c11-435f-ba5f-9be5c5b0b545')
                                    : NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: ListTile(
                              title: Text(
                                "Pro Scanner",
                                // textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              trailing: scannerPro
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
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          // height: MediaQuery.of(context).size.height * 0.09,
                          child: Text(
                            'Open from other Apps In',
                            // textAlign: TextAlign.start,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   setState(() {
                          //     if (!iOS) {
                          //       iOS = true;
                          //       scannerPro = false;
                          //     }
                          //   });
                          //   print(iOS);
                          // },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            // height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20202.png?alt=media&token=c16637d7-f45e-4d4b-afe2-f9b16c29b1db')
                                    // scale: 1.0,
                                    // fit: BoxFit.none,
                                    )),
                            child: ListTile(
                              title: Text(
                                "Location",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          // height: MediaQuery.of(context).size.height * 0.09,
                          child: Text(
                            'Download from cloud to',
                            // textAlign: TextAlign.start,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (!fileNameExtension) {
                                fileNameExtension = true;
                                // scannerPro = false;
                              } else {
                                fileNameExtension = false;
                              }
                            });
                            // print(iOS);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            // height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: fileNameExtension
                                      ? NetworkImage(
                                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.png?alt=media&token=db7641eb-1c11-435f-ba5f-9be5c5b0b545')
                                      : NetworkImage(
                                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                                  // scale: 1.0,
                                  fit: BoxFit.cover,
                                )),
                            child: ListTile(
                              title: Text(
                                "Show file name extension",
                                // textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              trailing: fileNameExtension
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
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            // height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                            )),
                            child: ListTile(
                              title: Text(
                                "Pro Scanner",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            // height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                            )),
                            child: ListTile(
                              title: Text(
                                "Pro Scanner",
                                // textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                          )),
                          child: ListTile(
                            title: Text(
                              "Show file name extension",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (fileNameExtensionSwitch) {
                                    fileNameExtensionSwitch = false;
                                  } else {
                                    fileNameExtensionSwitch = true;
                                  }
                                });
                              },
                              child: Container(
                                child: CustomSwitchButton(
                                  backgroundColor: fileNameExtensionSwitch
                                      ? Colors.blue
                                      : Colors.grey,
                                  unCheckedColor: Colors.white,
                                  animationDuration:
                                      Duration(milliseconds: 400),
                                  checkedColor: Colors.white,
                                  checked: fileNameExtensionSwitch,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          // height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                          )),
                          child: ListTile(
                            title: Text(
                              "Show recents",
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
                                  if (showRecents) {
                                    showRecents = false;
                                  } else {
                                    showRecents = true;
                                  }
                                });
                              },
                              child: Container(
                                child: CustomSwitchButton(
                                  backgroundColor:
                                      showRecents ? Colors.blue : Colors.grey,
                                  unCheckedColor: Colors.white,
                                  animationDuration:
                                      Duration(milliseconds: 400),
                                  checkedColor: Colors.white,
                                  checked: showRecents,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          // height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),
                          )),
                          child: ListTile(
                            title: Text(
                              "Show photos",
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
                                  if (showPhotos) {
                                    showPhotos = false;
                                  } else {
                                    showPhotos = true;
                                  }
                                });
                              },
                              child: Container(
                                child: CustomSwitchButton(
                                    backgroundColor:
                                        showPhotos ? Colors.blue : Colors.grey,
                                    unCheckedColor: Colors.white,
                                    animationDuration:
                                        Duration(milliseconds: 400),
                                    checkedColor: Colors.white,
                                    checked: showPhotos),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                                builder: (context) => Settings(),
                                
                                )
                                
                                
                                );
                              adddata();
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
                      'File Manager',
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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guily_app/screens/authenticated_screen/first_screen.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:guily_app/screens/loginScreen/login.dart';

Widget introCard3(BuildContext context) {
  final _auth = FirebaseAuth.instance;
  return Container(
    height: MediaQuery.of(context).size.height * 0.20,
    width: MediaQuery.of(context).size.width * 0.7,
    child: Card(
      // child: Text("asdasd"),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Download anything",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              child: Wrap(children: [
                Text(
                  "Nam sed congue ante. Phasellus vel eros non nunc convallis aliquet.",
                  style: GoogleFonts.roboto(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              // width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.19,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                child: SvgPicture.network(
                                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FEllipse%2085.svg?alt=media&token=cbde4fa6-3f28-4d59-8180-b17ef7cd392a'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                child: SvgPicture.network(
                                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FEllipse%2085.svg?alt=media&token=cbde4fa6-3f28-4d59-8180-b17ef7cd392a'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                child: CircleAvatar(
                                  backgroundColor:
                                      ColorTheme.color_theme_background,
                                  radius: 5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorTheme.color_theme_background,
                    ),
                    margin: EdgeInsets.only(left: 40),
                    child: Center(
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 15,
                        ),
                        onPressed: () async {
                          final _googleSignIn = GoogleSignIn();
                          bool user = await _googleSignIn.isSignedIn();
                          if (user || _auth.currentUser != null) {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        FirstScreenAfterAuth()));
                          } else {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => LoginScreen()));
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

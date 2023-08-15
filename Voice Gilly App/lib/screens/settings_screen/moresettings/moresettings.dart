import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:guily_app/screens/loginScreen/googleauthapi.dart';
import 'package:guily_app/screens/loginScreen/login.dart';
import 'package:guily_app/screens/settings_screen/accountsettings/account_settings.dart';
import 'package:guily_app/screens/settings_screen/settings.dart';
import 'package:guily_app/screens/settings_screen/subscription.dart';
import 'languages.dart';
import 'picturequality.dart';
import 'faqs.dart';

class MoreSettings extends StatefulWidget {
  @override
  _MoreSettingsState createState() => _MoreSettingsState();
}

class _MoreSettingsState extends State<MoreSettings> {
  bool backgroundMode = true;
  bool pushNotifications = true;
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: double.infinity,
                          child: Center(
                            child: Text("Room for Banner or Ad"),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FRectangle%2012.png?alt=media&token=5c9bf0f8-acfd-4ca2-b66e-f30e0383023e'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => AccountSettings()));
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.security,
                              color: Colors.grey,
                            ),
                            dense: true,
                            title: Text(
                              "Accounts settings",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => Subscription()));
                          },
                          child: ListTile(
                            leading: Icon(
                              CupertinoIcons.creditcard,
                              color: Colors.grey,
                            ),
                            dense: true,
                            title: Text(
                              "Manage subscriptions",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.share,
                            color: Colors.grey,
                          ),
                          // Image(
                          //   image: AssetImage('assets/images2/Image 19.png'),
                          // ),
                          dense: true,
                          // SvgPicture.asset('assets/images/Image 18.svg'),
                          title: Text(
                            "Share App",
                            style: GoogleFonts.nunito(fontSize: 14),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.rate_review_sharp,
                            color: Colors.grey,
                          ),
                          // Image(
                          //   image: AssetImage('assets/images2/Image 19.png'),
                          // ),
                          dense: true,
                          // SvgPicture.asset('assets/images/Image 18.svg'),
                          title: Text(
                            "Rate App",
                            style: GoogleFonts.nunito(fontSize: 14),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => PictureQualityScreen(),
                                ));
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.high_quality,
                              color: Colors.grey,
                            ),
                            // Image(
                            //   image: AssetImage('assets/images2/Image 19.png'),
                            // ),
                            dense: true,
                            // SvgPicture.asset('assets/images/Image 18.svg'),
                            title: Text(
                              "Picture quality",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => FaqsScreen(),
                                ));
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.help,
                              color: Colors.grey,
                            ),
                            dense: true,
                            // SvgPicture.asset('assets/images/Image 18.svg'),
                            title: Text(
                              "FAQ's",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.contact_support_outlined,
                            color: Colors.grey,
                          ),
                          // Image(
                          //   image: AssetImage('assets/images2/Image 19.png'),
                          // ),
                          dense: true,
                          // SvgPicture.asset('assets/images/Image 18.svg'),
                          title: Text(
                            "Support",
                            style: GoogleFonts.nunito(fontSize: 14),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.info_outline,
                            color: Colors.grey,
                          ),
                          // Image(
                          //   image: AssetImage('assets/images2/Image 19.png'),
                          // ),
                          dense: true,
                          // SvgPicture.asset('assets/images/Image 18.svg'),
                          title: Text(
                            "Terms and conditions",
                            style: GoogleFonts.nunito(fontSize: 14),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),

                          // SvgPicture.asset('assets/images2/Path 160.svg'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.privacy_tip,
                            color: Colors.grey,
                          ),
                          // Image(
                          //   image: AssetImage('assets/images2/Image 19.png'),
                          // ),
                          dense: true,
                          // SvgPicture.asset('assets/images/Image 18.svg'),
                          title: Text(
                            "Privacy policy",
                            style: GoogleFonts.nunito(fontSize: 14),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     CupertinoPageRoute(
                            //       builder: (context) => AccountPicture(),
                            //     ));
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => Languages(),
                                  ));
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.language,
                                color: Colors.grey,
                              ),
                              dense: true,
                              title: Text(
                                "Languages",
                                style: GoogleFonts.nunito(fontSize: 14),
                              ),
                              trailing: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await GoogleAuthApi().signOut();
                            FirebaseAuth.instance.signOut();
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.logout,
                              color: Colors.grey,
                            ),
                            dense: true,
                            title: Text(
                              "Logout",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          // padding: EdgeInsets.all(5),
                          child: Divider(),
                        ),
                        ListTile(
                          title: Text(
                            "Background mode",
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
                                if (backgroundMode) {
                                  backgroundMode = false;
                                } else {
                                  backgroundMode = true;
                                }
                              });
                            },
                            child: Container(
                              child: CustomSwitchButton(
                                backgroundColor:
                                    backgroundMode ? Colors.blue : Colors.grey,
                                unCheckedColor: Colors.white,
                                animationDuration: Duration(milliseconds: 400),
                                checkedColor: Colors.white,
                                checked: backgroundMode,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Push notifications",
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
                                if (pushNotifications) {
                                  pushNotifications = false;
                                } else {
                                  pushNotifications = true;
                                }
                              });
                            },
                            child: Container(
                              child: CustomSwitchButton(
                                  backgroundColor: pushNotifications
                                      ? Colors.blue
                                      : Colors.grey,
                                  unCheckedColor: Colors.white,
                                  animationDuration:
                                      Duration(milliseconds: 400),
                                  checkedColor: Colors.white,
                                  checked: pushNotifications),
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
                      'More Settings',
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

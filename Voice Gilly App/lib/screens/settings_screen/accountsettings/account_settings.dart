import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:guily_app/screens/settings_screen/accountsettings/account_picture.dart';
import 'package:guily_app/screens/settings_screen/moresettings/moresettings.dart';
import 'changeusernameorpass.dart';

class AccountSettings extends StatefulWidget {
  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.08,
                          // padding: EdgeInsets.all(5),
                          // child: Divider(),
                        ),
                        Divider(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) =>
                                      ChangeUsernameOrPassword(),
                                ));
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.person,
                              // Icons.security,
                              color: Colors.grey,
                            ),
                            dense: true,
                            title: Text(
                              "Change user name or password",
                              style: GoogleFonts.nunito(fontSize: 14),
                            ),
                            trailing: Icon(
                              // CupertinoIcons.rg,
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
                                  builder: (context) => AccountPicture(),
                                ));
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.image,
                              color: Colors.grey,
                            ),
                            dense: true,
                            title: Text(
                              "Account picture",
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
                        ),
                        ListTile(
                          leading: Icon(
                            CupertinoIcons.creditcard,
                            color: Colors.grey,
                          ),
                          // Image(
                          //   image: AssetImage('assets/images2/Image 19.png'),
                          // ),
                          dense: true,
                          // SvgPicture.asset('assets/images/Image 18.svg'),
                          title: Text(
                            "Become a pro!",
                            style: GoogleFonts.nunito(fontSize: 14),
                          ),
                          trailing: Image(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.16,
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fpro-png-4-png-image-pro-png-344_163-removebg-preview.png?alt=media&token=258d13b4-c270-493a-a352-a6ce2eb989bd'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          // padding: EdgeInsets.all(5),
                          child: Divider(),
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
                                builder: (context) => MoreSettings()));
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
                      'Account Settings',
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/settings_screen/dropbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:googleapis/drive/v3.dart' as ga;
import 'package:guily_app/screens/settings_screen/googleauthcredentials.dart';
import 'package:guily_app/screens/settings_screen/settings.dart';

class CloudAndConnectionsScreen extends StatefulWidget {
  @override
  _CloudAndConnectionsScreenState createState() =>
      _CloudAndConnectionsScreenState();
}

class _CloudAndConnectionsScreenState extends State<CloudAndConnectionsScreen> {
  final storage = new FlutterSecureStorage();
  final scaffoldkey = GlobalKey<ScaffoldState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn googleSignIn = GoogleSignIn(
  //   scopes: <String>[
  //     'email',
  //     'https://www.googleapis.com/auth/drive.appdata',
  //   ],
  // );
  GoogleSignInAccount googleSignInAccount;
  GoogleSignInAccount googleSignInAccountaccessed;
  ga.FileList list;
  var signedIn = false;
  bool showAutomatically = true;
  bool alwaysShow = false;
  bool neverShow = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: scaffoldkey,
          body: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Container(
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Text(
                              "Accounts",
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DropBox()),
                                );
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FImage%209.png?alt=media&token=2bdb33ea-281b-4f52-965c-c1bfab9d92eb'),
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
                              onPressed: () async {
                                bool signinornot;
                                try {
                                  signinornot = await loginWithGoogle();
                                  scaffoldkey.currentState.showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Loged In. Click again to upload file'),
                                    ),
                                  );
                                } catch (e) {
                                  scaffoldkey.currentState.showSnackBar(
                                    SnackBar(
                                      content: Text('$e'),
                                    ),
                                  );
                                }
                                if (signinornot &&
                                    googleSignInAccountaccessed != null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GoogleDrivePage(
                                              signedIn,
                                              googleSignInAccountaccessed)));
                                }
                              },
                              child: Row(
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FImage%2010.png?alt=media&token=ec3b6831-18a9-4dea-9760-9c39cb880ff5'),
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
                          height: MediaQuery.of(context).size.height * 0.02),
                      Container(
                          child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Page number indicator",
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                alwaysShow = false;
                                showAutomatically = true;
                                neverShow = false;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.85,
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
                                dense: true,
                                title: Text(
                                  "Wi-Fi Only",
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
                                alwaysShow = true;
                                showAutomatically = false;
                                neverShow = false;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: alwaysShow
                                        ? NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.png?alt=media&token=db7641eb-1c11-435f-ba5f-9be5c5b0b545')
                                        : NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),

                                    // scale: 1.0,
                                    fit: BoxFit.cover,
                                  )),
                              child: ListTile(
                                dense: true,
                                title: Text(
                                  "Disabled",
                                  // textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                trailing: alwaysShow
                                    ? SvgPicture.network(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%2070.svg?alt=media&token=5666fa6d-f039-4e0f-a5cf-b273a25de863',
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
                                alwaysShow = false;
                                showAutomatically = false;
                                neverShow = true;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: neverShow
                                        ? NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%20196.png?alt=media&token=db7641eb-1c11-435f-ba5f-9be5c5b0b545')
                                        : NetworkImage(
                                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FRectangle%20201.png?alt=media&token=34df0ef6-d216-4885-8206-ef2af1aae9d7'),

                                    // scale: 1.0,
                                    fit: BoxFit.cover,
                                  )),
                              child: ListTile(
                                dense: true,
                                title: Text(
                                  "Wi-Fi + Cellular network",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                trailing: neverShow
                                    ? SvgPicture.network(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FGroup%2070.svg?alt=media&token=5666fa6d-f039-4e0f-a5cf-b273a25de863',
                                        fit: BoxFit.none,
                                      )
                                    : Container(
                                        child: Text(""),
                                      ),
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
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
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FImage%2018.png?alt=media&token=68073edb-3081-4726-8f10-e1bd917160c9'),
                                  ),
                                  title: Text(
                                    "Box",
                                    style: GoogleFonts.nunito(fontSize: 14),
                                  ),
                                  trailing: SvgPicture.network(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FPath%20160.svg?alt=media&token=0a2fa2a5-cdc2-42db-8ab6-30af67da543d'),
                                  dense: true,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                                ListTile(
                                  leading: Image(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FImage%2019.png?alt=media&token=ec04dc7e-5263-4349-b6ac-438734bb371e'),
                                  ),
                                  dense: true,
                                  title: Text(
                                    "OneDrive",
                                    style: GoogleFonts.nunito(fontSize: 14),
                                  ),
                                  trailing: SvgPicture.network(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FPath%20160.svg?alt=media&token=0a2fa2a5-cdc2-42db-8ab6-30af67da543d'),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                                ListTile(
                                  dense: true,
                                  leading: Image(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2Fftp%20(1).png?alt=media&token=87b63a4c-9370-4728-a62a-0a72c7993e19'),
                                  ),
                                  title: Text(
                                    "FTP Server",
                                    style: GoogleFonts.nunito(fontSize: 14),
                                  ),
                                  trailing: SvgPicture.network(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FPath%20160.svg?alt=media&token=0a2fa2a5-cdc2-42db-8ab6-30af67da543d'),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                                ListTile(
                                  dense: true,
                                  leading: Image(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2Fftp.png?alt=media&token=fa394c5c-4f1b-431f-89a6-abccc82e051d'),
                                  ),
                                  title: Text(
                                    "SFTP Server",
                                    style: GoogleFonts.nunito(fontSize: 14),
                                  ),
                                  trailing: SvgPicture.network(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FPath%20160.svg?alt=media&token=0a2fa2a5-cdc2-42db-8ab6-30af67da543d'),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                                ListTile(
                                  dense: true,
                                  leading: Image(
                                    image: NetworkImage(
                                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FImage%2020.png?alt=media&token=eb149321-206d-4749-8126-7710bb92ab90'),
                                  ),
                                  title: Text(
                                    "Windows SMB",
                                    style: GoogleFonts.nunito(fontSize: 14),
                                  ),
                                  trailing: SvgPicture.network(
                                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images2%2FPath%20160.svg?alt=media&token=0a2fa2a5-cdc2-42db-8ab6-30af67da543d'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))
                    ]),
                  )
                ])),
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
                        'Cloud and connections',
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

  Future<bool> loginWithGoogle() async {
    final _googleSignIn = GoogleSignIn();
    _googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount googleSignInAccount) async {
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        final UserCredential authResult =
            await _auth.signInWithCredential(credential);
        final User user = authResult.user;

        assert(!user.isAnonymous);
        assert(await user.getIdToken() != null);

        final User currentUser = _auth.currentUser;
        assert(user.uid == currentUser.uid);

        print('signInWithGoogle succeeded: $user');

        setState(() {
          googleSignInAccountaccessed = googleSignInAccount;
          signedIn = true;
        });
      }
    });
    if (signedIn) {
      try {
        _googleSignIn.signInSilently().whenComplete(() => () {});
      } catch (e) {
        setState(() {
          signedIn = false;
        });
      }
    } else {
      final GoogleSignInAccount googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      final User user = authResult.user;
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final User currentUser = _auth.currentUser;
      assert(user.uid == currentUser.uid);

      setState(() {
        signedIn = true;
        googleSignInAccountaccessed = googleSignInAccount;
      });
    }
    return signedIn;
  }
}

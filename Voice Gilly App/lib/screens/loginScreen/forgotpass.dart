import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'package:guily_app/widgets/colors.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        ),
        backgroundColor: ColorTheme.color_theme_background,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Image(
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.width * 0.3,
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fwhite-blue__sygnet_-removebg-preview.png?alt=media&token=e4397491-0fe1-467d-b067-c46dafefd611'),
                      fit: BoxFit.contain,
                    ),
                    Text(
                      "Forgot Password",
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    CupertinoTextField(
                      padding: EdgeInsets.all(10),
                      placeholder: 'Email',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400,
                      ),
                      placeholderStyle: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w400,
                      ),
                      onChanged: (String value) {
                        _email = value;
                      },
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: RaisedButton(
                        elevation: 0.9,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Colors.white,
                        child: Text(
                          "Send link",
                          style: TextStyle(
                            color: ColorTheme.color_theme_background,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () async {
                          try {
                            await FirebaseAuth.instance
                                .sendPasswordResetEmail(email: _email);
                          } catch (e) {
                            scaffoldkey.currentState.showSnackBar(
                              SnackBar(
                                content: Text('$e'),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        )));
  }
}

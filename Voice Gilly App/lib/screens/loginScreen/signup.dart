import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/loginScreen/login.dart';
import 'package:guily_app/widgets/colors.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _email;
  String _password;
  String _confirmpassword;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.color_theme_background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Image(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.4,
                        image: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fwhite-blue__sygnet_-removebg-preview.png?alt=media&token=e4397491-0fe1-467d-b067-c46dafefd611'),
                        fit: BoxFit.contain,
                      ),
                      Text(
                        "SignUp",
                        style: GoogleFonts.nunito(
                          fontSize: 26,
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
                        placeholder: 'Username or email',
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _email = value;
                          });
                        },
                        placeholderStyle: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w400,
                        ),
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
                      CupertinoTextField(
                        padding: EdgeInsets.all(10),
                        placeholder: 'Password',
                        obscureText: true,
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _confirmpassword = value;
                          });
                        },
                        placeholderStyle: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      CupertinoTextField(
                        padding: EdgeInsets.all(10),
                        placeholder: 'Confirm Password',
                        obscureText: true,
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                        onChanged: (String value) {
                          if (_confirmpassword == value) {
                            setState(() {
                              _password = value;
                            });
                          }
                        },
                        placeholderStyle: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
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
                            "SignUp",
                            style: GoogleFonts.nunito(
                              color: ColorTheme.color_theme_background,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () async {
                            try {
                              auth.createUserWithEmailAndPassword(
                                  email: _email, password: _password);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            } catch (e) {
                              print(e);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          'Login Here',
                          style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new LoginScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

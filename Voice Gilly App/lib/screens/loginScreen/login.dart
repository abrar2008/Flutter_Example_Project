import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guily_app/screens/authenticated_screen/first_screen.dart';
import 'package:guily_app/screens/loginScreen/googleauthapi.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/loginScreen/forgotpass.dart';
import 'package:guily_app/widgets/colors.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  String _email;
  String _password;

  final auth = FirebaseAuth.instance;
  Future sendemail() async {
    final user = await GoogleAuthApi().signIn();

    if (user == null) return;

    final email = user.email;
    final auth = await user.authentication;
    final token = auth.accessToken;
    final smtpServer = gmailSaslXoauth2(email, token);
    final message = Message()
      ..from = Address(email, 'Farhan')
      ..recipients = ['irfankhan9731546@gmail.com']
      ..subject = 'Success'
      ..text = 'You have logged in';

    try {
      await send(message, smtpServer);
      print('email sent');
    } catch (e) {
      print('$e Not sent');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      // backgroundColor: ColorTheme.color_theme_background,
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
                        "Login",
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
                        onChanged: (String value) {
                          setState(() {
                            _email = value;
                          });
                        },
                        padding: EdgeInsets.all(10),
                        placeholder: 'Username or email',
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
                        // textAlign: TextAlign.center,
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
                        placeholderStyle: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w400,
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _password = value;
                          });
                        },
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                            ),
                          ),
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
                            "Login",
                            style: GoogleFonts.nunito(
                              color: ColorTheme.color_theme_background,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () async {
                            try {
                              await auth.signInWithEmailAndPassword(
                                  email: _email, password: _password);
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          FirstScreenAfterAuth()));
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
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        'Or login with',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          child: Image(
                            height: MediaQuery.of(context).size.height * 0.05,
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FGoogle%20logo.png?alt=media&token=061b0421-3b71-4218-9c5e-33659a00ca18'),
                          ),
                          onTap: () async {
                            final user = await GoogleAuthApi().signIn();
                            print('Sent is $user');
                            if (user != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FirstScreenAfterAuth(),
                                ),
                              );
                            } else {
                              scaffoldkey.currentState.showSnackBar(
                                SnackBar(
                                  content: Text('Not Logged In. Try Again'),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          child: Image(
                            height: MediaQuery.of(context).size.height * 0.05,
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FFacebook%20logo.png?alt=media&token=80f2f987-3617-41b5-a26b-292d2543ba05'),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          child: Image(
                            height: MediaQuery.of(context).size.height * 0.05,
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FiCloud%20logo.png?alt=media&token=fca39b7c-1553-4934-ab10-00b415a3ec72'),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          child: Image(
                            height: MediaQuery.of(context).size.height * 0.05,
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FLinkedIn%20logo.png?alt=media&token=3e52f72b-78a4-4a48-a326-526543bb646e'),
                          ),
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Don\'t have an acount?',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          // decoration: TextDecoration.underline,
                          // decorationThickness: 2,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      GestureDetector(
                        child: Text(
                          'SignUp Here',
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
                                      new SignUp()));
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



import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelapp/screen/Homepage.dart';




import '../widget/constants.dart';
import 'IntroScreen.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState() {
    init();
    super.initState();
    //move();
  }

  Future<Timer> init() async {
    return Timer(const Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {

    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var status = _prefs.getBool('isLoggedIn') ?? false;
    print(status);
    // print(PreferencesKeys.token.isNotEmpty);

    if (status) {
      print("----------------3--------");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Homepage())

        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (BuildContext context) => Home(),
        //   ),
      );
    } else {
      print("----------------4--------");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => IntroScreen()));





    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // image: DecorationImage(
              //   image: AssetImage("assets/images/logo.jpg"),
              //   fit: BoxFit.cover,
              // ),
            ),
            width: sizeWidth(context),
           //Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //logoImg,
                Container(
                    width: 350.00,
                    height: 350.00,
                    child: Image.asset("assets/images/logo1.png")),



              ],
            ),
          ),
        ),
      ),
    );
  }

// Future<void> move() async {
//   final loginModel _logindata = GetStorage().read('logindata');
//   // SharedPreferences prefs = await SharedPreferences.getInstance();
//   // bool _introSeen = (prefs.getBool('isloged') ?? false);
//   Future.delayed(const Duration(milliseconds: 5000), () async {
//     if (_logindata != null) {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (BuildContext context) => Home(),
//         ),
//       );
//       // Get.to(MainDash());
//     } else {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (BuildContext context) => const IntroScreen(),
//         ),
//       );
//       // Get.to(SplachScreen());
//     }
//   });
// }
}

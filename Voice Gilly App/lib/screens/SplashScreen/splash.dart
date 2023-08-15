import 'package:guily_app/widgets/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:guily_app/screens/loadingScreen/loading_screen.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:progress_indicators/progress_indicators.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    move();
  }

  void move() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoadingScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.color_theme_background,
      body: Stack(
        children: [
          buildImage(context),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Image(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fwhite-blue__sygnet_-removebg-preview.png?alt=media&token=e4397491-0fe1-467d-b067-c46dafefd611'),
                    fit: BoxFit.cover,
                  ),
                  CollectionScaleTransition(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

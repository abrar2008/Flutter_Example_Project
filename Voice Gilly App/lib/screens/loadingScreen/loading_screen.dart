import 'package:flutter/material.dart';
import 'package:guily_app/widgets/circle_image.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:guily_app/widgets/lines.dart';
import 'package:guily_app/screens/introScreen1/intro-screen-1.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
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
                  buildLines(context),
                  GestureDetector(
                    onTap: () {
                      print("Tap");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => IntroScreen1()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.arrow_forward,
                          size: 25,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

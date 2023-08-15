import 'package:flutter/material.dart';
import 'package:guily_app/widgets/circle_image.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:guily_app/screens/introScreen3/intro_card3.dart';
import 'package:guily_app/widgets/lines.dart';

class IntroScreen3 extends StatefulWidget {
  @override
  _IntroScreen3State createState() => _IntroScreen3State();
}

class _IntroScreen3State extends State<IntroScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.color_theme_background,
      body: Stack(
        children: [
          buildImage(context),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Image(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FIllustration3.png?alt=media&token=8d0afd16-aa87-4c64-858f-641ae74690da'),
                  ),
                ),
              ),
              buildLines(context),
              introCard3(context),
            ],
          )
        ],
      ),
    );
  }
}

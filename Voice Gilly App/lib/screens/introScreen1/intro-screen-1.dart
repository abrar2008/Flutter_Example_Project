import 'package:flutter/material.dart';
import 'package:guily_app/widgets/circle_image.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:guily_app/screens/introScreen1/intro_card1.dart';
import 'package:guily_app/widgets/lines.dart';

class IntroScreen1 extends StatefulWidget {
  @override
  _IntroScreen1State createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.color_theme_background,
      body: Stack(
        children: [
          buildImage(context),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Image(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FIllustration1.png?alt=media&token=ce776c95-135b-4db0-add3-ed49a6d4cf20'),
                  ),
                ),
                buildLines(context),
                introCard(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

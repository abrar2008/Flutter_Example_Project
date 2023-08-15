import 'package:flutter/material.dart';
import 'package:guily_app/widgets/circle_image.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:guily_app/screens/introScreen2/intro_card2.dart';
import 'package:guily_app/widgets/lines.dart';

class IntroScreen2 extends StatefulWidget {
  @override
  _IntroScreen2State createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
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
                        'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FIllustration2.png?alt=media&token=709e731b-53b8-4cbb-a0f9-18925ffc2416'),
                  ),
                ),
              ),
              buildLines(context),
              introCard2(context),
            ],
          )
        ],
      ),
    );
  }
}

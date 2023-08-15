

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:travelapp/widget/colors_schemes.dart';

import '../widget/constants.dart';
import 'LoginScreen.dart';









class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0 ,color: Colors.white);
    final introKey = GlobalKey<IntroductionScreenState>();
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(13.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );


    void _onIntroEnd(context) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    }


    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor:Colors.white,


      pages: [

        PageViewModel(
          titleWidget: Container(

            child: Column(
              children: [
                SizedBox(height: 160),
                Image.asset("assets/images/intro1.jpg"),
                SizedBox(height: 130),
                Text("Embark on a Journey of Discovery and Adventure with Our Unforgettable Tour",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 160),


              ],
            ),
          ),

          body:
          "",

          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              SizedBox(height: 160),
              Image.asset("assets/images/intro1.jpg"),
              SizedBox(height: 130),
              Text("Embark on a Journey of Discovery and Adventure with Our Unforgettable Tour",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 160),


            ],
          ),

          body:
          "",

          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              SizedBox(height: 160),
              Image.asset("assets/images/intro1.jpg"),
              SizedBox(height: 130),
              Text("Embark on a Journey of Discovery and Adventure with Our Unforgettable Tour",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 160),


            ],
          ),

          body:
          "",

          decoration: pageDecoration,
        ),
//         PageViewModel(
//           titleWidget: Column(
//             children: [
//
//               SizedBox(height: 10),
//               Text("Where to get the detail",
//                 style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 40),
//               Image.asset("$imgpath/cashmemo1.jpg"),
//               SizedBox(height: 40),
//               Text("You must have a Muller & Phipps Pakistan (Pvt.)Ltd. Invoice/cashmemo available with you to get the detail.",
//                 style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//
//
//             ],
//           ),
//
// body: "",
//
//
//           decoration: pageDecoration,
//         ),
//         PageViewModel(
//           titleWidget: Column(
//             children: [
//               SizedBox(height: 10),
//               Text("Get your Customer Code",
//                 style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 20),
//               Image.asset("$imgpath/cashmemo__.jpg"),
//               SizedBox(height: 20),
//               Text("Look for your customer code as shown above on the Invoice/Cash memo to perform Sign up in the app.",
//                 style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 10),
//
//             ],
//           ),
//
//           body:
//           "",
//
//           decoration: pageDecoration,
//         ),

      ],

      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back:Text("Next"),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Text('Next', style: TextStyle(fontWeight: FontWeight.w600)),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );

  }
}


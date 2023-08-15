import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/views/on_boarding_screens/professional_vendors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => locator<MainViewModel>(),
      disposeViewModel: false,
      onModelReady: (model) => model.initializeSplash(),
      builder: (context, model, child) {
        return SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(ImageUtils.hazrin,
                    width: 43.w,
                    height: 26.h,
                  ),
                  //SizedBox(height: 2.h,),
                  Text("HAZRIN",
                    style: TextStyle(
                      fontFamily: FontUtils.avertaBold,
                      fontSize: 5.5.t,
                      color: ColorUtils.greenColor,
                    ),
                  ),
                  SizedBox(height: 0.3.h,),
                  Text("The Easily Accessible Market",
                    style: TextStyle(
                      fontFamily: FontUtils.avertaBold,
                      fontSize: 1.6.t,
                      color: ColorUtils.greenColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

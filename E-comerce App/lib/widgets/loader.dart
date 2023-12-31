import 'package:flutter/material.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorUtils.white,
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(ColorUtils.greenColor),
          ),
        ),
      ),
    );
    return  Container(
      child: Center(
        child: SizedBox(
          height: 5.h,width: 10.w,
          child: new CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(ColorUtils.greenColor),
          ),
        ),
      ),
    );
  }
}

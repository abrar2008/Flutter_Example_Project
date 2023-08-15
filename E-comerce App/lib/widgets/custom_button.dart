import 'package:flutter/material.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/dimensions.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onButtonPressed;
  final String? textValue;
  final double? height;

  const CustomButton({this.onButtonPressed, this.textValue, this.height, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        width: MediaQuery.of(context).size.width / 1,
        height: height!.h,
        //margin: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: ColorUtils.greenColor,
          boxShadow: [
            BoxShadow(
              color: ColorUtils.greenColor.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: MaterialButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          onPressed: onButtonPressed,
          child: Text(
            textValue!,
            style: TextStyle(
                fontFamily: FontUtils.avertaSemiBold,
                fontSize: 2.0.t,
                color: Colors.white),
          ),
        ),
      ),

      // MaterialButton(
      //     onPressed: onButtonPressed,
      //   color: ColorUtils.greenColor,
      //   minWidth: MediaQuery.of(context).size.width /1,
      //   height: 7.h,
      //   textColor: Colors.white,
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(6.0),
      //   ),
      //   // style: ElevatedButton.styleFrom(
      //   //     primary: ColorUtils.greenColor,
      //   //     shadowColor: ColorUtils.greenColor.withOpacity(0.25),
      //   //     shape: RoundedRectangleBorder(
      //   //         borderRadius: BorderRadius.circular(10.0)),
      //   //     minimumSize: Size(MediaQuery.of(context).size.width /1, 7.h),
      //   //   ),
      //     child: Text(
      //       textValue!,
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //         fontFamily: FontUtils.avertaSemiBold,
      //         fontSize: 2.2.t,
      //         color: Colors.white,
      //       ),
      //     ),
      // ),
    );
  }
}

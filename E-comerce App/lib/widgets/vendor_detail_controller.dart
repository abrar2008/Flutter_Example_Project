import 'package:flutter/material.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';

class VenDorDetailController extends StatelessWidget {

  final TextEditingController? vendorDetailController;
  final TextInputType? textInputType;
  final FocusNode? myFocusNode;
  final String? hintTextValue;
  final Color? borderColor;

  const VenDorDetailController({this.vendorDetailController, this.textInputType = TextInputType.text, this.myFocusNode, this.hintTextValue, this.borderColor =  const Color(0xff008080), Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
      //margin: EdgeInsets.only(top: 2.7.h,right: 3.5.w,left: 3.5.w),
      child: TextField(
        style: TextStyle(
            fontFamily: FontUtils.avertaDemoRegular,
            fontSize: 2.0.t,
            color: ColorUtils.greenColor
        ),
        focusNode: myFocusNode,
        controller: vendorDetailController,
        obscureText: false,
        keyboardType: textInputType,
        decoration: InputDecoration(
          isDense: true,
          hintText: hintTextValue,
          hintStyle: TextStyle(
            fontFamily: FontUtils.avertaDemoRegular,
            fontSize: 1.8.t,
            color: ColorUtils.textFieldColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:borderColor!),
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorUtils.greenColor),
            borderRadius: BorderRadius.circular(
              6,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';

class BankTransferMethodController extends StatelessWidget {

  final TextEditingController? bankTransferAccountController;
  final TextInputType? textInputType;

  const BankTransferMethodController({this.bankTransferAccountController, this.textInputType = TextInputType.text, Key? key}) : super(key: key);

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
        controller: bankTransferAccountController,
        obscureText: false,
        keyboardType: textInputType,
        decoration: InputDecoration(
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:ColorUtils.greenColor),
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

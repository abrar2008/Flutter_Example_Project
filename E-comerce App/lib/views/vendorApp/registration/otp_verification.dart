import 'package:flutter/material.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/views/vendorApp/login/log_in.dart';
import 'package:stacked/stacked.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VendorAuthViewModel>.reactive(
      viewModelBuilder: () => locator<VendorAuthViewModel>(),
      disposeViewModel: false,
      builder: (context, model, child) {
        return SafeArea(
          top: false,
          bottom: false,
          child: GestureDetector(
            onTap: (){
              context.unFocus();
            },
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(height: 11.h,),
                      Center(
                        child: Image.asset(ImageUtils.otpLock,
                          width: 28.i,
                          height: 28.i,
                        ),
                      ),
                      SizedBox(height: 2.3.h,),
                      Text("Enter OTP",
                      style: TextStyle(
                        fontFamily: FontUtils.avertaSemiBold,
                        fontSize: 3.2.t,
                        color: ColorUtils.greenColor
                      ),
                      ),
                      SizedBox(height: 2.9.h,),
                      Text("Please enter the 4 digit code that has been send to your number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: FontUtils.avertaDemoRegular,
                            fontSize: 1.9.t,
                            color: ColorUtils.jobsDescription
                        ),
                      ),
                      SizedBox(
                        height: 7.5.h,
                      ),
                      PinCodeTextField(
                        onDone: (value){
                          model.navigationService.navigateTo(to: LogIn());
                        },
                        pinBoxOuterPadding: EdgeInsets.symmetric(horizontal: 4.5.w),
                        controller: model.codeController,
                        pinTextAnimatedSwitcherTransition:
                        ProvidedPinBoxTextAnimation.scalingTransition,
                        pinTextAnimatedSwitcherDuration:
                        Duration(milliseconds: 300),
                        maxLength: 4,
                        pinBoxWidth: 16.w,
                        pinBoxRadius: 6,
                        pinBoxHeight: 16.w,
                        pinBoxColor: Colors.transparent,
                        defaultBorderColor: ColorUtils.textFieldColor,
                        hasTextBorderColor: ColorUtils.greenColor,
                        pinBoxBorderWidth: 1.5,
                        keyboardType: TextInputType.number,
                        pinTextStyle: TextStyle(
                          fontFamily: FontUtils.avertaSemiBold,
                          //fontWeight: FontWeight.w400,
                          fontSize: 3.t,
                        ),
                      ),
                      SizedBox(
                        height: 3.8.h,
                      ),
                      Text("Didnt receive OTP code?",
                      style: TextStyle(
                        fontFamily: FontUtils.avertaDemoRegular,
                        fontSize: 2.t,
                        color: ColorUtils.jobsDescription,
                      ),
                      ),
                      SizedBox(
                        height: 0.8.h,
                      ),
                      Text("Resend Code",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: ColorUtils.greenColor,
                          fontFamily: FontUtils.avertaDemoRegular,
                          fontSize: 2.t,
                          color: ColorUtils.greenColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

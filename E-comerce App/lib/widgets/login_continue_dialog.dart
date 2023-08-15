
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/dimensions.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/views/vendorApp/login/log_in.dart';
import 'package:stacked/stacked.dart';

class LoginContinueDialog extends StatefulWidget {

  String msg;

  LoginContinueDialog({Key? key, required this.msg}) : super(key: key);

  @override
  _LoginContinueDialogState createState() => _LoginContinueDialogState();
}

class _LoginContinueDialogState extends State<LoginContinueDialog> {

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<VendorAuthViewModel>.reactive(
      builder: (context, model, child){
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          backgroundColor: Colors.white,
          insetPadding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.horizontalPadding, vertical: 3.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SvgPicture.asset(ImageUtils.signInIcon),
                SizedBox(height: 3.h),

                //Log In/Sign Up To Continue
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Log In/Sign Up To Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: FontUtils.avertaSemiBold,
                        fontSize: 2.3.t,
                        color: ColorUtils.darkText
                    ),
                  ),
                ),
                SizedBox(height: 3.h),

                Container(
                  alignment: Alignment.center,
                  child: Text(
                    widget.msg,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: FontUtils.avertaDemoRegular,
                        fontSize: 1.7.t,
                        color: ColorUtils.darkText
                    ),
                  ),
                ),
                SizedBox(height: 6.h),

                //Continue Button
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                  child: ElevatedButton(
                    onPressed: () {
                      model.navigationService.back();
                      model.navigationService.navigateTo(to: LogIn());
                    },
                    child: Text('Continue'),
                    style: ElevatedButton.styleFrom(
                      primary: ColorUtils.greenColor  ,
                      onPrimary: ColorUtils.white,
                      padding: EdgeInsets.symmetric(vertical: 1.5.h),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      textStyle: TextStyle(
                        color: ColorUtils.white,
                        fontFamily: FontUtils.avertaSemiBold,
                        fontSize: 1.8.t,
                        //height: 0
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => locator<VendorAuthViewModel>(),
      disposeViewModel: false,
    );
  }
}

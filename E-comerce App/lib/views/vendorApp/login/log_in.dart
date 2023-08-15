import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/dimensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/views/vendorApp/registration/sign_up.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/vendor_cnic.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:hazrin/widgets/loader.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';
import 'package:hazrin/utils/extensions.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<VendorAuthViewModel>.reactive(
      viewModelBuilder: () => locator<VendorAuthViewModel>(),
      disposeViewModel: false,
      onModelReady: (model) {
        //model.onLoginEmailFocus();
        //model.onLoginPasswordFocus();
      },
      builder: (context, model, child) {
        return model.loginLoading == true ? Center(child: Loader()) :
        SafeArea(
          top: false,
          bottom: false,
          child: GestureDetector(
            onTap: () {
              context.unFocus();
              // model.isLoginEmailInFocus = false;
              // model.isLoginPasswordInFocus = false;
              // model.notifyListeners();
            },
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        child: BackArrow()
                    ),
                    SizedBox(height: 5.h),

                    //Heading
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontFamily: FontUtils.avertaSemiBold,
                          fontSize: 3.2.t,
                          color: ColorUtils.darkText,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),

                    //Sub heading
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                      child: Text(
                        "Log in with your password",
                        style: TextStyle(
                          fontFamily: FontUtils.avertaDemoRegular,
                          fontSize: 1.8.t,
                          color: ColorUtils.jobsDescription,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.2.h,
                    ),

                    //Email Address
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                      child: Text(
                        "Email Address",
                        style: TextStyle(
                          fontFamily: FontUtils.avertaSemiBold,
                          fontSize: 1.7.t,
                          color: model.loginEmailFocus.hasFocus ||
                              model.loginEmailController.text.length !=
                                  0
                              ? ColorUtils.greenColor
                              : ColorUtils.textFieldColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h),

                    //Email Address Field
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
                        margin: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color:model.loginPasswordFocus.hasFocus || model.loginPasswordController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            SvgPicture.asset(ImageUtils.signupEmail, color:model.loginPasswordFocus.hasFocus || model.loginPasswordController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor),
                            SizedBox(width: 3.w),
                            Expanded(
                              child: TextField(
                                focusNode: model.loginEmailFocus,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(
                                    fontFamily: FontUtils.avertaDemoRegular,
                                    fontSize: 2.2.t,
                                    color: ColorUtils.greenColor
                                ),
                                controller: model.loginEmailController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense:true,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),

                                ),
                              ),
                            ),

                          ],
                        )
                    ),
                    SizedBox(height: 3.h),

                    //Password
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                      child: Text(
                        "Password",
                        style: TextStyle(
                          fontFamily: FontUtils.avertaSemiBold,
                          fontSize: 1.7.t,
                          color: model.loginPasswordFocus.hasFocus ||
                              model.loginPasswordController.text
                                  .length !=
                                  0
                              ? ColorUtils.greenColor
                              : ColorUtils.textFieldColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),

                    //Password field
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
                      margin: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: model.loginPasswordFocus.hasFocus || model.loginPasswordController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(ImageUtils.signupPassword, color: model.loginPasswordFocus.hasFocus || model.loginPasswordController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor),
                          SizedBox(width: 3.w),
                          Expanded(
                            child: TextField(
                              obscureText: !model.loginPasswordVisible,
                              focusNode: model.loginPasswordFocus,
                              controller: model.loginPasswordController,
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                  fontFamily: FontUtils.avertaDemoRegular,
                                  fontSize: 2.2.t,
                                  color: ColorUtils.greenColor
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense:true,
                                contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                              ),
                            ),
                          ),
                          SizedBox(width: 3.w),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                model.loginPasswordVisible = !model.loginPasswordVisible;
                              });
                            },
                            icon: Icon(model.loginPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                              color: ColorUtils.greenColor,
                              //size: 6 * SizeConfig.imageSizeMultiplier,
                              //color: ColorUtils.textFormColor,),
                            ),
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.5.h),

                    //Login button
                    CustomButton(
                      onButtonPressed: () {
                        model.loginVendor();
                      },
                      textValue: "Log In",
                      height: 6,
                    ),
                    SizedBox(height: 4.5.h),

                    //Don’t have an account?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(
                            fontFamily: FontUtils.avertaSemiBold,
                            decoration: TextDecoration.underline,
                            decorationColor: ColorUtils.greenColor,
                            fontSize: 1.8.t,
                            color: ColorUtils.greenColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            model.navigationService.navigateTo(to: SignUp());
                          },
                          child: Text(" Sign up",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaSemiBold,
                              decoration: TextDecoration.underline,
                              decorationColor: ColorUtils.greenColor,
                              fontSize: 1.8.t,
                              color: ColorUtils.greenColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),

                    //Or continue with
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            //height: 0.15.h,
                            thickness: 1,
                            color: ColorUtils.textFieldColor,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text("Or continue with",
                          style: TextStyle(
                            fontFamily: FontUtils.avertaDemoRegular,
                            fontSize: 1.8.t,
                            color: ColorUtils.textFieldColor,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: Divider(
                            //height: 0.15.h,
                            thickness: 1,
                            color: ColorUtils.textFieldColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.5.h),

                    //Social Logins
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 15.i,
                            height: 15.i,
                            decoration: BoxDecoration(
                              color: ColorUtils.google,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: ColorUtils.google),
                            ),
                            child:Center(
                              child: SvgPicture.asset(ImageUtils.google,
                                color: Colors.white,
                                width: 8.i,
                                height: 8.i,
                              ),
                            ),
                          ),
                          Container(
                            width: 15.i,
                            height: 15.i,
                            decoration: BoxDecoration(
                              color: ColorUtils.facebookBackground,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: ColorUtils.facebookBackground,),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 11.0),
                              child: Center(
                                child: SvgPicture.asset(ImageUtils.faceBook,
                                  color: Colors.white,
                                  width: 8.i,
                                  height: 8.i,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 15.i,
                            height: 15.i,
                            decoration: BoxDecoration(
                              color: ColorUtils.appleLogo,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: ColorUtils.appleLogo,),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(vertical: 11.0),
                              child: Center(
                                child: SvgPicture.asset(ImageUtils.apple,
                                  color: Colors.white,
                                  width: 8.i,
                                  height: 8.i,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

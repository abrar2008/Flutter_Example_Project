import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/api/loginmodel.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/views/vendorApp/login/log_in.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:hazrin/widgets/loader.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<VendorAuthViewModel>.reactive(
      viewModelBuilder: () => locator<VendorAuthViewModel>(),
      disposeViewModel: false,
      onModelReady: (model){
        model.initializeVendorSignup();
        // model.onSignupUserNameFocus();
        // model.onSignupEmailFocus();
        // model.onSignupPasswordFocus();
        // model.onSignupMobileFocus();
      },
      builder: (context, model, child) {
        return model.signupLoading == true ? Center(child: Loader()) :
          SafeArea(
          top: false,
          bottom: false,
          child: GestureDetector(
            onTap: (){
              context.unFocus();
              model.isSignupUserNameInFocus = false;
              model.isSignupEmailInFocus = false;
              model.isSignupPasswordInFocus = false;
              model.isSignupMobileInFocus = false;
              model.signupUserNameFocus.unfocus();
              model.signupEmailFocus.unfocus();
              model.signupPasswordFocus.unfocus();
              model.signupMobileFocus.unfocus();
              model.notifyListeners();
            },
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 6.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            child: BackArrow()
                        )
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(
                                height: 3.0.h,
                              ),
                              Center(
                                child: Container(
                                  child: Image.asset(ImageUtils.hazrin_logo,
                                    width: 25.5.i,
                                    height: 25.5.i,
                                  ),
                                ),
                              ),
                              SizedBox(height: 0.8.h,),
                              Center(
                                child: Container(
                                  child: Text(
                                    "HAZRIN",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 3.05.t,
                                      color: ColorUtils.greenColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.8.h,
                              ),

                              //User Name
                              Text(
                                "User Name",
                                style: TextStyle(
                                  fontFamily: FontUtils.avertaSemiBold,
                                  fontSize: 1.8.t,
                                  color: model.signupUserNameFocus.hasFocus || model.signupUserNameController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                ),
                              ),
                              SizedBox(height: 1.h),
                              /*Container(
                                      height: 6.5.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                      ),
                                      //margin: EdgeInsets.only(top: 2.7.h,right: 3.5.w,left: 3.5.w),
                                      child: TextField(
                                        focusNode: model.signupUserNameFocus,
                                        style: TextStyle(
                                          fontFamily: FontUtils.avertaDemoRegular,
                                          fontSize: 2.3.t,
                                          color: ColorUtils.greenColor
                                        ),
                                        controller: model.signupUserNameController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          prefixIcon:
                                          Padding(
                                            padding: EdgeInsets.only(left: 4.0.w,right: 2.0.w),
                                            child: SvgPicture.asset(ImageUtils.signupUserName, color:model.signupUserNameFocus.hasFocus || model.signupUserNameController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor, width: 5, height: 5,),
                                          ),
                                          //contentPadding: EdgeInsets.only(top: 3.h, bottom: 0.5.h,right: 2.w),
                                          isDense: true,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color:model.signupUserNameController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor),
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: ColorUtils.greenColor),
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                        ),
                                      ),
                                    ),*/

                              //User Name Field
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(color:model.signupUserNameFocus.hasFocus || model.signupUserNameController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor)
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      SvgPicture.asset(ImageUtils.signupUserName, color:model.signupUserNameFocus.hasFocus || model.signupUserNameController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor),
                                      SizedBox(width: 3.w),
                                      Expanded(
                                        child: TextField(
                                          focusNode: model.signupUserNameFocus,
                                          keyboardType: TextInputType.text,
                                          textInputAction: TextInputAction.next,
                                          style: TextStyle(
                                              fontFamily: FontUtils.avertaDemoRegular,
                                              fontSize: 2.2.t,
                                              color: ColorUtils.greenColor
                                          ),
                                          controller: model.signupUserNameController,
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

                              //Email Address
                              Text(
                                "Email Address",
                                style: TextStyle(
                                  fontFamily: FontUtils.avertaSemiBold,
                                  fontSize: 1.8.t,
                                  color: model.signupEmailFocus.hasFocus || model.signupEmailController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                ),
                              ),
                              SizedBox(height: 1.h),

                              //Email Address Field
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(color:model.signupEmailFocus.hasFocus || model.signupEmailController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor)
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      SvgPicture.asset(ImageUtils.signupEmail, color:model.signupEmailFocus.hasFocus || model.signupEmailController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor),
                                      SizedBox(width: 3.w),
                                      Expanded(
                                        child: TextField(
                                          focusNode: model.signupEmailFocus,
                                          keyboardType: TextInputType.emailAddress,
                                          textInputAction: TextInputAction.next,
                                          style: TextStyle(
                                              fontFamily: FontUtils.avertaDemoRegular,
                                              fontSize: 2.2.t,
                                              color: ColorUtils.greenColor
                                          ),
                                          controller: model.signupEmailController,
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
                              Text(
                                "Password",
                                style: TextStyle(
                                  fontFamily: FontUtils.avertaSemiBold,
                                  fontSize: 1.8.t,
                                  color: model.signupPasswordFocus.hasFocus || model.signupPasswordController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                ),
                              ),
                              SizedBox(height: 1.h,),

                              //Password Field
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color:model.signupPasswordFocus.hasFocus || model.signupPasswordController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor)
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(ImageUtils.signupPassword, color:model.signupPasswordFocus.hasFocus || model.signupPasswordController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor),
                                    SizedBox(width: 3.w),
                                    Expanded(
                                      child: TextField(
                                        obscureText: !model.signupPasswordVisible,
                                        focusNode: model.signupPasswordFocus,
                                        controller: model.signupPasswordController,
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
                                          model.signupPasswordVisible = !model.signupPasswordVisible;
                                        });
                                      },
                                      icon: Icon(model.signupPasswordVisible
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
                              SizedBox(height: 3.h),

                              //Mobile number
                              Text(
                                "Mobile Number",
                                style: TextStyle(
                                  fontFamily: FontUtils.avertaSemiBold,
                                  fontSize: 1.8.t,
                                  color: model.signupMobileFocus.hasFocus || model.signupMobileController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                ),
                              ),
                              SizedBox(height: 1.h,),

                              //Mobile number field
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(color:model.signupMobileFocus.hasFocus || model.signupMobileController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor)
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      SvgPicture.asset(ImageUtils.signupMobileNumber, color:model.signupMobileFocus.hasFocus || model.signupMobileController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor),
                                      SizedBox(width: 3.w),
                                      Expanded(
                                        child: TextField(
                                          focusNode: model.signupMobileFocus,
                                          controller: model.signupMobileController,
                                          obscureText: false,
                                          keyboardType: TextInputType.number,
                                          textInputAction: TextInputAction.done,
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

                                    ],
                                  )
                              ),
                              SizedBox(height: 7.h),

                              //Signup button
                              CustomButton(
                                onButtonPressed:
                                    () {
                                  model.createVendor();
                                  // Navigator.push(
                                  //     context,
                                  //     PageTransition(
                                  //         type: PageTransitionType.fade,
                                  //         child: LogIn()));
                                },
                                textValue: "Sign Up",
                                height: 6,
                              ),
                              SizedBox(height: 4.5.h,),

                              //Already have an account?
                              Center(
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  LogIn()));
                                  },
                                  child: Text("Already have an account? Log in",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaSemiBold,
                                      decoration: TextDecoration.underline,
                                      decorationColor: ColorUtils.greenColor,
                                      fontSize: 1.8.t,
                                      color: ColorUtils.greenColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h,),

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
                              SizedBox(height: 4.5.h,),

                              //Social Logins
                              Container(
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
                              SizedBox(height: 5.h,),

                            ],
                          ),
                        ),
                      ),
                    ),
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

import 'package:flutter/material.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return ColorUtils.greenColor;
      }
      return ColorUtils.greenColor;
    }
    return ViewModelBuilder<VendorAuthViewModel>.reactive(
      viewModelBuilder: () => locator<VendorAuthViewModel>(),
      disposeViewModel: false,
      builder: (context, model, child) {
        return SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6.5.h,),
                      BackArrow(),
                      SizedBox(height: 2.8.h,),
                      Text("Terms & Conditions",
                        style: TextStyle(
                          fontFamily: FontUtils.avertaSemiBold,
                          fontSize: 2.8.t,
                          color: ColorUtils.darkText,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.3.h,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaDemoRegular,
                                      fontSize: 1.8.t,
                                      color: ColorUtils.jobsDescription,
                                      height: 0.23.h,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaDemoRegular,
                                      fontSize: 1.8.t,
                                      color: ColorUtils.jobsDescription,
                                      height: 0.23.h,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  SizedBox(height: 1.5.h,),
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //mainAxisSize: MainAxisSize.min,
                                    //crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Checkbox(
                                          fillColor: MaterialStateProperty.resolveWith(getColor),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5.0))),
                                          value: model.isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              model.isChecked = value!;
                                            });
                                          }),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur\nadipisicing elit.",
                                        style: TextStyle(
                                            fontFamily: FontUtils.avertaDemoRegular,
                                            fontSize: 1.8.t,
                                            color: ColorUtils.jobsDescription,
                                            height: 0.215.h
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                                    child: CustomButton(
                                      onButtonPressed: (){
                                        model.termsConditions();
                                      },
                                      textValue: "Register",
                                      height: 6.15,
                                    ),
                                  ),
                                  SizedBox(height: 2.0.h,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

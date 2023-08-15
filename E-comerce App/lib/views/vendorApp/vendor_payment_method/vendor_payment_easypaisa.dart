import 'package:flutter/material.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';

class EasyPaisaMethod extends StatefulWidget {
  const EasyPaisaMethod({Key? key}) : super(key: key);

  @override
  _EasyPaisaMethodState createState() => _EasyPaisaMethodState();
}

class _EasyPaisaMethodState extends State<EasyPaisaMethod> {
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
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Image.asset(ImageUtils.easyPaisaPageLogo),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 6.h,
                              ),
                              BackArrow(),
                              SizedBox(
                                height: 2.5.h,
                              ),
                              Text(
                                "Easy Paisa",
                                style: TextStyle(
                                  fontFamily: FontUtils.avertaSemiBold,
                                  fontSize: 2.7.t,
                                  color: ColorUtils.darkText,
                                ),
                              ),
                              SizedBox(
                                height: 3.75.h,
                              ),
                              Text(
                                "Experience easy payments - save your Easy paisa account as deafult method to pay!",
                                style: TextStyle(
                                  fontFamily: FontUtils.avertaDemoRegular,
                                  fontSize: 1.8.t,
                                  color: ColorUtils.jobsDescription,
                                ),
                              ),
                              SizedBox(height: 4.h,),
                              Text(
                                "Please ensure your Easypaisa account is active and has sufficient balance.",
                                style: TextStyle(
                                  fontFamily: FontUtils.avertaDemoRegular,
                                  fontSize: 1.8.t,
                                  color: ColorUtils.jobsDescription,
                                ),
                              ),
                              SizedBox(height: 5.h,),
                              Text("Account Number",
                                style: TextStyle(
                                  fontFamily: FontUtils.avertaSemiBold,
                                  fontSize: 1.8.t,
                                  color: ColorUtils.greenColor,
                                ),
                              ),
                              SizedBox(height: 2.h,),
                              Container(
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
                                  keyboardType: TextInputType.number,
                                  controller: model.easyPaisaAccountController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintText: "Enter account nubmer",
                                    hintStyle: TextStyle(
                                        fontFamily: FontUtils.avertaDemoRegular,
                                        fontSize: 2.0.t,
                                        color: ColorUtils.greenColor
                                    ),
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
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        child: CustomButton(
                          onButtonPressed: () {
                            model.easyPaisa();
                          },
                          textValue: "Save",
                          height: 6.15,
                        ),
                      ),
                      SizedBox(
                        height: 7.0.h,
                      ),
                    ],
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

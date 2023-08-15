import 'package:flutter/material.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/bankTransfer_method_controller.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';
import 'package:hazrin/utils/extensions.dart';

class BankTransferMethod extends StatefulWidget {
  const BankTransferMethod({Key? key}) : super(key: key);

  @override
  _BankTransferMethodState createState() => _BankTransferMethodState();
}

class _BankTransferMethodState extends State<BankTransferMethod> {
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
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  Center(
                    child: Container(
                      //margin: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                      width: 70.w,
                      height: 70.h,
                      child: Image.asset(ImageUtils.bankBackground,
                      ),
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
                                height: 6.5.h,
                              ),
                              BackArrow(),
                              SizedBox(
                                height: 3.5.h,
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bank Transfer",
                                        style: TextStyle(
                                          fontFamily: FontUtils.avertaSemiBold,
                                          fontSize: 2.7.t,
                                          color: ColorUtils.darkText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.2.h,
                                      ),
                                      Text(
                                        "Account Title",
                                        style: TextStyle(
                                          fontFamily: FontUtils.avertaBold,
                                          fontSize: 1.8.t,
                                          color: ColorUtils.greenColor,
                                        ),
                                      ),
                                      SizedBox(height: 1.h,),
                                      BankTransferMethodController(
                                        bankTransferAccountController: model.bankAccountTitleController,
                                      ),
                                      SizedBox(height: 1.8.h,),
                                      Text(
                                        "Account Number",
                                        style: TextStyle(
                                          fontFamily: FontUtils.avertaBold,
                                          fontSize: 1.8.t,
                                          color: ColorUtils.greenColor,
                                        ),
                                      ),
                                      SizedBox(height: 1.65.h,),
                                      BankTransferMethodController(
                                        textInputType: TextInputType.number,
                                        bankTransferAccountController: model.bankAccountNumberController,
                                      ),
                                      SizedBox(height: 2.5.h,),
                                      Text(
                                        "Bank Name",
                                        style: TextStyle(
                                          fontFamily: FontUtils.avertaBold,
                                          fontSize: 1.8.t,
                                          color: ColorUtils.greenColor,
                                        ),
                                      ),
                                      SizedBox(height: 1.65.h,),
                                      BankTransferMethodController(
                                        bankTransferAccountController: model.bankAccountNameController,
                                      ),
                                      SizedBox(height: 1.8.h,),
                                      Text(
                                        "Swift Code",
                                        style: TextStyle(
                                          fontFamily: FontUtils.avertaBold,
                                          fontSize: 1.8.t,
                                          color: ColorUtils.greenColor,
                                        ),
                                      ),
                                      SizedBox(height: 1.65.h,),
                                      BankTransferMethodController(
                                        textInputType: TextInputType.number,
                                        bankTransferAccountController: model.bankAccountSwiftController,
                                      ),
                                      SizedBox(height: 1.8.h,),
                                      Text(
                                        "Branch Name",
                                        style: TextStyle(
                                          fontFamily: FontUtils.avertaBold,
                                          fontSize: 1.8.t,
                                          color: ColorUtils.greenColor,
                                        ),
                                      ),
                                      SizedBox(height: 1.65.h,),
                                      BankTransferMethodController(
                                        bankTransferAccountController: model.bankAccountBranchController,
                                      ),
                                      SizedBox(height: 1.8.h,),
                                      Text(
                                        "Branch Code",
                                        style: TextStyle(
                                          fontFamily: FontUtils.avertaBold,
                                          fontSize: 1.8.t,
                                          color: ColorUtils.greenColor,
                                        ),
                                      ),
                                      SizedBox(height: 1.65.h,),
                                      BankTransferMethodController(
                                        textInputType: TextInputType.number,
                                        bankTransferAccountController: model.bankAccountBranchCodeController,
                                      ),
                                      SizedBox(height: 5.5.h,),
                                      CustomButton(
                                        onButtonPressed: () {
                                          model.bankTransfer();
                                        },
                                        textValue: "Save",
                                        height: 6.15,
                                      ),
                                      SizedBox(height: 1.5.h,),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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

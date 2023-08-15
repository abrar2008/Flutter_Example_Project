import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/cnic_formatter.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:hazrin/widgets/stepper.dart';
import 'package:hazrin/widgets/vendor_detail_controller.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:hazrin/utils/extensions.dart';

class VendorDetails extends StatefulWidget {
  const VendorDetails({Key? key}) : super(key: key);

  @override
  _VendorDetailsState createState() => _VendorDetailsState();
}

class _VendorDetailsState extends State<VendorDetails> {

  List<String> gender = [
    'Male',
    'Female',
  ];

  String? selectedGender;

  @override
  void initState() {
    selectedGender = gender[0];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VendorAuthViewModel>.reactive(
      viewModelBuilder: () => locator<VendorAuthViewModel>(),
      disposeViewModel: false,
      onModelReady: (model) => model.onSignUpStart(),
      builder: (context, model, child) {
        return WillPopScope(
          onWillPop: model.onSignUpBack,
          child: SafeArea(
            top: false,
            bottom: false,
            child: GestureDetector(
              onTap: (){
                context.unFocus();
              },
              child: Scaffold(
                backgroundColor: Colors.white,
                // resizeToAvoidBottomInset: model.currentDetailStep == 2
                //     || model.currentDetailStep == 3? true : false,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // SizedBox(
                            //   height: 6.5.h,
                            // ),
                            //BackArrow(),
                            SizedBox(
                              height: 3.5.h,
                            ),
                            //MyStepper(currentStep: model.currentDetailStep),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Your Details",
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
                                      "Full Name",
                                      style: TextStyle(
                                        fontFamily: FontUtils.avertaBold,
                                        fontSize: 1.8.t,
                                        color: ColorUtils.greenColor,
                                      ),
                                    ),
                                    SizedBox(height: 1.h,),
                                    VenDorDetailController(
                                      vendorDetailController: model.vendorFullNameController,
                                    ),
                                    SizedBox(height: 1.8.h,),
                                    Text(
                                      "Gender",
                                      style: TextStyle(
                                        fontFamily: FontUtils.avertaBold,
                                        fontSize: 1.8.t,
                                        color: ColorUtils.greenColor,
                                      ),
                                    ),
                                    SizedBox(height: 1.65.h,),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(6.0)),
                                          border: Border.all(
                                            color: ColorUtils.greenColor,
                                          )),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                                        child: DropdownButtonFormField<String>(
                                          isExpanded: true,
                                          decoration: InputDecoration(
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Colors.transparent),
                                              )),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.black,
                                            size: 6.i,
                                          ),
                                          onChanged: (newValue) {
                                            selectedGender = newValue;
                                            setState(() {});
                                          },
                                          items: gender.map((job) {
                                            return DropdownMenuItem(
                                              value: job,
                                              child: new Text(
                                                job,
                                                style: TextStyle(
                                                  fontFamily: FontUtils.avertaDemoRegular,
                                                  fontSize: 2.0.t,
                                                  color: ColorUtils.greenColor,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                          value: selectedGender,
                                        ),
                                      ),
                                    ),
                                    // VenDorDetailController(
                                    //   vendorDetailController: model.vendorGenderController,
                                    // ),
                                    SizedBox(height: 2.5.h,),
                                    Text(
                                      "Date of Birth",
                                      style: TextStyle(
                                        fontFamily: FontUtils.avertaBold,
                                        fontSize: 1.8.t,
                                        color: ColorUtils.greenColor,
                                      ),
                                    ),
                                    SizedBox(height: 1.65.h,),
                                    InkWell(
                                      onTap: (){
                                        model.openAndSelectDob(context);
                                        context.unFocus();
                                      },
                                      child: Container(
                                          height: 6.h,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(
                                                6,
                                              ),
                                            border: Border.all(color: ColorUtils.greenColor)
                                          ),
                                          // margin: EdgeInsets.only(
                                          //     top: 2.7.h,
                                          //     right: 3.5.w,
                                          //     left: 3.5.w),
                                          child: Stack(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 2.5.w,
                                                      right: 4.w
                                                  ),
                                                  child: Text(
                                                    model.selectedDOB == null
                                                        ? "Date of Birth"
                                                        : DateFormat('yyyy-MM-dd')
                                                        .format(model.selectedDOB),
                                                    style: model.selectedDOB == null ? TextStyle(color: ColorUtils.greenColor,fontWeight: FontWeight.w400,fontSize: 1.9.t)
                                                        :
                                                    TextStyle(color: ColorUtils.greenColor,fontWeight: FontWeight.w400,fontSize: 1.9.t),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child: Container(
                                                  margin: EdgeInsets.only(right: 4.w),
                                                  child: SvgPicture.asset(
                                                    ImageUtils.calender,
                                                    width: 4.5.i,
                                                    height: 4.5.i,
                                                  ),
                                                ),
                                              )
                                            ],
                                          )),
                                    ),
                                    SizedBox(height: 1.8.h,),
                                    Text(
                                      "CNIC Number",
                                      style: TextStyle(
                                        fontFamily: FontUtils.avertaBold,
                                        fontSize: 1.8.t,
                                        color: ColorUtils.greenColor,
                                      ),
                                    ),
                                    SizedBox(height: 1.65.h,),
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
                                    focusNode: model.vendorCNICFocus,
                                    controller: model.vendorCNICController,
                                    obscureText: false,
                                    //keyboardType: textInputType,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      //hintText: hintTextValue,
                                      // hintStyle: TextStyle(
                                      //   fontFamily: FontUtils.avertaDemoRegular,
                                      //   fontSize: 1.8.t,
                                      //   color: ColorUtils.textFieldColor,
                                      // ),
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
                                    // VenDorDetailController(
                                    //   textInputType: TextInputType.number,
                                    //   vendorDetailController: model.vendorCNICController,
                                    // ),
                                    SizedBox(height: 1.8.h,),
                                    Text(
                                      "CNIC Expiry",
                                      style: TextStyle(
                                        fontFamily: FontUtils.avertaBold,
                                        fontSize: 1.8.t,
                                        color: ColorUtils.greenColor,
                                      ),
                                    ),
                                    SizedBox(height: 1.65.h,),
                                    VenDorDetailController(
                                      vendorDetailController: model.vendorCNICExpiryController,
                                      textInputType: TextInputType.number,
                                    ),
                                    // SizedBox(height: 1.8.h,),
                                    // Text(
                                    //   "Branch Code",
                                    //   style: TextStyle(
                                    //     fontFamily: FontUtils.avertaBold,
                                    //     fontSize: 1.8.t,
                                    //     color: ColorUtils.greenColor,
                                    //   ),
                                    // ),
                                    // SizedBox(height: 1.65.h,),
                                    // BankTransferMethodController(
                                    //   textInputType: TextInputType.number,
                                    //   bankTransferAccountController: model.bankAccountBranchCodeController,
                                    // ),
                                    SizedBox(height: 5.5.h,),
                                    CustomButton(
                                      onButtonPressed: () {
                                        model.vendorDetail();
                                      },
                                      textValue: "Save",
                                      height: 6.15,
                                    ),
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
              ),
            ),
          ),
        );
      },
    );
  }
}

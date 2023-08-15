import 'package:flutter/material.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:hazrin/widgets/vendor_detail_controller.dart';
import 'package:stacked/stacked.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class BusinessDetail extends StatefulWidget {
  const BusinessDetail({Key? key}) : super(key: key);

  @override
  _BusinessDetailState createState() => _BusinessDetailState();
}

class _BusinessDetailState extends State<BusinessDetail> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VendorAuthViewModel>.reactive(
      viewModelBuilder: () => locator<VendorAuthViewModel>(),
      disposeViewModel: false,
      onModelReady: (model){
        // model.onBusinessNameFocus();
        // model.onNTNFocus();
        // model.onOfficeNumberFocus();
        // model.onAddressFocus();
        // model.onBuildingNameFocus();
        // model.onShopNumberFocus();
        // model.onZipCodeFocus();
        // model.onReferralCodeFocus();
        // model.onEmergencyNumberFocus();
      },
      builder: (context, model, child) {
        return SafeArea(
          top: false,
          bottom: false,
          child: GestureDetector(
            onTap: (){
              context.unFocus();
              model.isBusinessNameInFocus = false;
              model.isVendorNTNInFocus = false;
              model.isVendorOfficeNumberInFocus = false;
              model.isVendorAddressInFocus = false;
              model.isVendorBuildingNameInFocus = false;
              model.isVendorShopNumberInFocus = false;
              model.isVendorZipCodeInFocus = false;
              model.isVendorReferralCodeInFocus = false;
              model.isVendorEmergencyNumberInFocus = false;
              model.notifyListeners();
            },
            child: Scaffold(
              backgroundColor: Colors.white,
              resizeToAvoidBottomInset: false,
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
                          SizedBox(
                            height: 6.5.h,
                          ),
                          // BackArrow(),
                          // SizedBox(
                          //   height: 11.5.h,
                          // ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Business Details",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaSemiBold,
                                      fontSize: 3.0.t,
                                      color: ColorUtils.darkText,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.2.h,
                                  ),
                                  Text(
                                    "Business Name",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.businessNameFocus.hasFocus || model.vendorBusinessNameController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.h,),
                                  VenDorDetailController(
                                    myFocusNode: model.businessNameFocus,
                                    vendorDetailController: model.vendorBusinessNameController,
                                    hintTextValue: "Enter business name",
                                    borderColor: model.vendorBusinessNameController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                  ),
                                  SizedBox(height: 1.8.h,),
                                  Text(
                                    "NTN Number (optional)",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.vendorNTNFocus.hasFocus || model.vendorNTNNumberController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.65.h,),
                                  VenDorDetailController(
                                    myFocusNode: model.vendorNTNFocus,
                                    vendorDetailController: model.vendorNTNNumberController,
                                    hintTextValue: "Enter ntn number",
                                    textInputType: TextInputType.number,
                                    borderColor: model.vendorNTNNumberController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                  ),
                                  SizedBox(height: 2.5.h,),
                                  Text(
                                    "Office Telephone Number (optional)",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.vendorOfficeNumberFocus.hasFocus || model.vendorOfficeTelephoneNumberController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.65.h,),
                                  VenDorDetailController(
                                    myFocusNode: model.vendorOfficeNumberFocus,
                                    vendorDetailController: model.vendorOfficeTelephoneNumberController,
                                    hintTextValue: "Enter telephone number",
                                    textInputType: TextInputType.number,
                                    borderColor: model.vendorOfficeTelephoneNumberController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                  ),
                                  SizedBox(height: 1.8.h,),
                                  Text(
                                    "Address",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.vendorAddressFocus.hasFocus || model.vendorAddressController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.65.h,),
                                  VenDorDetailController(
                                    myFocusNode: model.vendorAddressFocus,
                                    vendorDetailController: model.vendorAddressController,
                                    hintTextValue: "Enter address",
                                    borderColor: model.vendorAddressController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                  ),
                                  SizedBox(height: 1.8.h,),
                                  Text(
                                    "Building Name",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.vendorBuildingNameFocus.hasFocus || model.vendorBuildingNameController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.65.h,),
                                  VenDorDetailController(
                                    myFocusNode: model.vendorBuildingNameFocus,
                                    vendorDetailController: model.vendorBuildingNameController,
                                    hintTextValue: "Enter building name",
                                    borderColor: model.vendorBuildingNameController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                  ),
                                  SizedBox(height: 1.8.h,),
                                  Text(
                                    "Area",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.vendorBuildingNameFocus.hasFocus || model.vendorBuildingNameController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.65.h,),
                                  Container(
                                    width: double.infinity,
                                    height: 6.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                      border: Border.all(color: ColorUtils.greenColor),
                                    ),
                                    child: Center(
                                      child: Text(model.sliderValue.toStringAsFixed(0) + " km",
                                      style: TextStyle(
                                        fontFamily: FontUtils.avertaDemoRegular,
                                        fontSize: 1.9.t,
                                        color: ColorUtils.greenColor
                                      ),
                                    ),
                                    ),
                                  ),
                                  SfSlider(
                                    activeColor: ColorUtils.greenColor,
                                    min: 0.0,
                                    max: 10.0,
                                    value: model.sliderValue,
                                    interval: 20,
                                    stepSize: 1,
                                    //showTicks: true,
                                    //showLabels: true,
                                    enableTooltip: true,
                                    minorTicksPerInterval: 1,
                                    onChanged: (dynamic value){
                                      model.sliderValue = value;
                                      model.notifyListeners();
                                    },
                                  ),
                                  SizedBox(height: 1.8.h,),
                                  Text(
                                    "Shop No.",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.vendorShopNumberFocus.hasFocus || model.vendorShopNumberController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.65.h,),
                                  VenDorDetailController(
                                    myFocusNode: model.vendorShopNumberFocus,
                                    vendorDetailController: model.vendorShopNumberController,
                                    hintTextValue: "Enter shop no.",
                                    textInputType: TextInputType.number,
                                    borderColor: model.vendorShopNumberController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                  ),
                                  SizedBox(height: 1.8.h,),
                                  Text(
                                    "Zip Code",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.vendorZipCodeFocus.hasFocus || model.vendorZipCodeController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.65.h,),
                                  VenDorDetailController(
                                    myFocusNode: model.vendorZipCodeFocus,
                                    vendorDetailController: model.vendorZipCodeController,
                                    hintTextValue: "Enter zip code",
                                    textInputType: TextInputType.number,
                                    borderColor: model.vendorZipCodeController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                  ),
                                  SizedBox(height: 1.8.h,),
                                  Text(
                                    "Referral Code (optional)",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.vendorReferralCodeFocus.hasFocus || model.vendorReferralCodeController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.65.h,),
                                  VenDorDetailController(
                                    myFocusNode: model.vendorReferralCodeFocus,
                                    vendorDetailController: model.vendorReferralCodeController,
                                    hintTextValue: "Enter referral code",
                                    textInputType: TextInputType.number,
                                    borderColor: model.vendorReferralCodeController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                  ),
                                  SizedBox(height: 1.8.h,),
                                  Text(
                                    "Emergency Contact Number",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaBold,
                                      fontSize: 1.8.t,
                                      color: model.vendorBuildingNameFocus.hasFocus || model.vendorBuildingNameController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                    ),
                                  ),
                                  SizedBox(height: 1.65.h,),
                                  VenDorDetailController(
                                    myFocusNode: model.vendorEmergencyNumberFocus,
                                    vendorDetailController: model.vendorEmergencyNumberController,
                                    hintTextValue: "Enter emergency contact number",
                                    textInputType: TextInputType.number,
                                    borderColor: model.vendorEmergencyNumberController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,
                                  ),
                                  SizedBox(height: 5.5.h,),
                                  CustomButton(
                                    onButtonPressed: () {
                                      model.vendorBusinessDetail();
                                    },
                                    textValue: "Save",
                                    height: 6.15,
                                  ),
                                  SizedBox(height: 1.65.h,),
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
        );
      },
    );
  }
}

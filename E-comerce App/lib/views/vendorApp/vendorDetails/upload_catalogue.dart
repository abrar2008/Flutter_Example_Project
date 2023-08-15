import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/terms_conditions.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';

class UploadCatalogue extends StatefulWidget {
  const UploadCatalogue({Key? key}) : super(key: key);

  @override
  _UploadCatalogueState createState() => _UploadCatalogueState();
}

class _UploadCatalogueState extends State<UploadCatalogue> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VendorAuthViewModel>.reactive(
      viewModelBuilder: () => locator<VendorAuthViewModel>(),
      disposeViewModel: false,
      builder: (context, model, child) {
        return SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            floatingActionButton: Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                width: MediaQuery.of(context).size.width / 1,
                height: 6.15.h,
                //margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: ColorUtils.greenColor,
                  boxShadow: [
                    BoxShadow(
                      color: ColorUtils.greenColor.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  onPressed: (){
                    //showLoginAlertDialog(context);
                    model.navigationService.navigateTo(to: TermsAndConditions());
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontFamily: FontUtils.avertaSemiBold,
                        fontSize: 2.0.t,
                        color: Colors.white),
                  ),
                ),
              ),

              // MaterialButton(
              //     onPressed: onButtonPressed,
              //   color: ColorUtils.greenColor,
              //   minWidth: MediaQuery.of(context).size.width /1,
              //   height: 7.h,
              //   textColor: Colors.white,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(6.0),
              //   ),
              //   // style: ElevatedButton.styleFrom(
              //   //     primary: ColorUtils.greenColor,
              //   //     shadowColor: ColorUtils.greenColor.withOpacity(0.25),
              //   //     shape: RoundedRectangleBorder(
              //   //         borderRadius: BorderRadius.circular(10.0)),
              //   //     minimumSize: Size(MediaQuery.of(context).size.width /1, 7.h),
              //   //   ),
              //     child: Text(
              //       textValue!,
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontFamily: FontUtils.avertaSemiBold,
              //         fontSize: 2.2.t,
              //         color: Colors.white,
              //       ),
              //     ),
              // ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(height: 6.5.h,),
                    BackArrow(),
                    SizedBox(height: 3.8.h,),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Upload Catalogue",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaSemiBold,
                                      fontSize: 3.t,
                                      color: ColorUtils.darkText,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      model.navigationService.navigateTo(to: TermsAndConditions());
                                    },
                                    child: Text("Skip",
                                      style: TextStyle(
                                          fontFamily: FontUtils.avertaDemoRegular,
                                          fontSize: 1.75.t,
                                          color: ColorUtils.greenColor,
                                          decoration: TextDecoration.underline,
                                          decorationColor: ColorUtils.greenColor
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3.2.h,),
                              GestureDetector(
                                onTap: (){
                                  model.getCatalogueImage();
                                },
                                child: Center(
                                  child: Container(
                                    width: double.infinity,
                                    child: DottedBorder(
                                        radius: Radius.circular(10.0),
                                        borderType: BorderType.RRect,
                                        padding: EdgeInsets.all(5.0),
                                        dashPattern: [10,10],
                                        color: ColorUtils.greenColor,
                                        child: Padding(
                                          padding:EdgeInsets.only(top: 1.4.h,bottom: 1.6.h),
                                          child: Center(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SvgPicture.asset(ImageUtils.catalogueIcon),
                                                SizedBox(height: 1.5.h,),
                                                Text("Upload Image",
                                                  style: TextStyle(
                                                    fontFamily: FontUtils.avertaSemiBold,
                                                    fontSize: 1.8.t,
                                                    color: ColorUtils.greenColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.2.h,),
                              Text("Uploaded Images",
                                style: TextStyle(
                                  fontFamily: FontUtils.avertaSemiBold,
                                  fontSize: 2.5.t,
                                  color: ColorUtils.darkText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.6.h,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: model.images.length,
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 25,
                              mainAxisSpacing: 18,
                              childAspectRatio: 1,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                  border: Border.all(color: ColorUtils.greenColor),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.file(model.images[index],
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        model.images.removeAt(index);
                                        model.notifyListeners();
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 1.w,bottom: 0.6.h),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: SvgPicture.asset(ImageUtils.imageCross,
                                            //size: 5.5.i,
                                            //color: ColorUtils.greenColor,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 10.h,),
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

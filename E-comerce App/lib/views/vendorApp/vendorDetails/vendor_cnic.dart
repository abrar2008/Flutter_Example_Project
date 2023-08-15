import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/upload_catalogue.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/vendor_stepper.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';
import 'package:hazrin/utils/extensions.dart';

class VendorCNIC extends StatelessWidget {
  const VendorCNIC({Key? key}) : super(key: key);

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6.h,),
                      BackArrow(),
                      SizedBox(height: 2.5.h,),
                      Text("Vendor Image",
                        style: TextStyle(
                          fontFamily: FontUtils.avertaSemiBold,
                          fontSize: 2.8.t,
                          color: ColorUtils.jobsDescription,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 7.5.w, right: 7.5.w, top: 3.5.h, ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 25.i,
                              height: 25.i,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    width: 25.i,
                                    height: 25.i,
                                    decoration: new BoxDecoration(
                                      color: ColorUtils.textFieldColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipOval(
                                      child: model.profileFileImage==null
                                          ?
                                      model.profileImage!.isEmpty ?
                                      Center(
                                        child: SvgPicture.asset(
                                          ImageUtils.avatar,
                                          width: 11.i,
                                          height: 11.i,
                                        ),
                                      ): Image.network(model.profileImage!,
                                        width: 25.i,
                                        height: 25.i,
                                        fit: BoxFit.cover,
                                      )
                                          :
                                      Image.file(
                                        model.profileFileImage!,
                                        width: 32.i,
                                        height: 32.i,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                   GestureDetector(
                                     onTap: (){
                                       model.getImage();
                                     },
                                     child: Container(
                                      //margin: EdgeInsets.only(bottom: 3.h,right: 2.w),
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 7.4.i,
                                          height: 7.4.i,
                                          decoration: new BoxDecoration(
                                            color: ColorUtils.greenColor,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Container(
                                              width: 6.2.i,
                                              height: 3.2.i,
                                              decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(ImageUtils.camera,
                                                  width: 3.i,
                                                  height: 3.i,),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ),
                                   ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Text("Scan CNIC",
                        style: TextStyle(
                          fontFamily: FontUtils.avertaSemiBold,
                          fontSize: 2.8.t,
                          color: ColorUtils.jobsDescription,
                        ),
                      ),
                      SizedBox(height: 2.5.h,),
                      Center(
                        child: Container(
                          width: double.infinity,
                          child: DottedBorder(
                              radius: Radius.circular(10.0),
                              borderType: BorderType.RRect,
                              padding: EdgeInsets.all(5.0),
                              dashPattern: [10,10],
                              color: ColorUtils.greenColor,
                              child: Padding(
                                padding:EdgeInsets.symmetric(vertical: 6.h),
                                child: Center(
                                  child: Text("Scan Front Side of CNIC",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaSemiBold,
                                      fontSize: 1.85.t,
                                      color: ColorUtils.greenColor,
                                    ),
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 3.2.h,),
                      Center(
                        child: Container(
                          width: double.infinity,
                          child: DottedBorder(
                              radius: Radius.circular(10.0),
                              borderType: BorderType.RRect,
                              padding: EdgeInsets.all(5.0),
                              dashPattern: [10,10],
                              color: ColorUtils.greenColor,
                              child: Padding(
                                padding:EdgeInsets.symmetric(vertical: 6.h),
                                child: Center(
                                  child: Text("Scan Back Side of CNIC",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaSemiBold,
                                      fontSize: 1.85.t,
                                      color: ColorUtils.greenColor,
                                    ),
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 7.5.h,),
                      CustomButton(
                        onButtonPressed: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: VendorStepper()));
                        },
                        textValue: "Continue",
                        height: 6.15,
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

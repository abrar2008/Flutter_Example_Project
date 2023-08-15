import 'package:flutter/material.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:stacked/stacked.dart';

class PendingApproval extends StatelessWidget {
  const PendingApproval({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => locator<MainViewModel>(),
      disposeViewModel: false,
      builder: (context, model, child) {
        return SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //SizedBox(height: 6.5.h,),
                Container(
                  margin: EdgeInsets.only(left: 4.w, right: 4.w, top: 6.5.h),
                  child: Align(
                    alignment: Alignment.centerLeft,
                      child: BackArrow()
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    children: [
                      Image.asset(ImageUtils.sandWatch,
                         width: 45.i,
                         height: 45.i,
                      ),
                      SizedBox(height: 3.h,),
                      Text("Processing Request...",
                      style: TextStyle(
                        fontFamily: FontUtils.avertaSemiBold,
                        fontSize: 2.5.t,
                        color: ColorUtils.darkText
                      ),
                      ),
                      SizedBox(height: 2.h,),
                      Text("Please wait your request for generating your profile has been sent. We will notified you as soon it is done.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: FontUtils.avertaDemoRegular,
                            fontSize: 1.8.t,
                            color: ColorUtils.jobsDescription
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 3.h,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

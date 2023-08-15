import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/views/on_boarding_screens/support.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
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
            floatingActionButton: GestureDetector(
                onTap: () {
                  model.navigationService.navigateTo(to: Support());
                  //Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Support()));
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorUtils.greenColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 4.i,
                          // height: 1.h,
                          // width: 1.w,
                        ),
                      ),
                    ),

                    TweenAnimationBuilder(
                      tween: Tween(begin: 0.3, end: 0.7),
                      duration: Duration(seconds: 2),
                      builder: (context, value, child) {
                        return SizedBox(
                          width: 17.w,
                          height: 17.w,
                          child: CircularProgressIndicator(
                            value: double.parse(value.toString()),
                            color: ColorUtils.greenColor,
                            backgroundColor: Colors.transparent,
                            strokeWidth: 4,
                          ),
                        );
                      },
                    ),

                  ],
                )
              //   child: CircularStepProgressIndicator(
              //   totalSteps: 3,
              //   currentStep: 0,
              //   selectedColor: ColorUtils.greenColor,
              //   unselectedColor: Colors.red,
              //   padding: 0,
              //   width: 100,
              //     child: Image.asset(ImageUtils.proVendor,
              //     width: 15.w,
              //       height: 15.h ,
              //     )
              // ),
              // Container(
              //   child: Image.asset(ImageUtils.proVendor,
              //   width: 15.w,
              //     height: 15.h ,
              //   ),
              // ),
            ),
            backgroundColor: Colors.white,
            body: Stack(
              children: [

                Container(
                  width: double.infinity,
                  child: Image.asset(
                    //ImageUtils.firstGif,
                    //ImageUtils.testGif,
                    "assets/gifs/2nd.gif",
                    fit: BoxFit.fill,
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // SizedBox(
                      //   height: 3.1.h,
                      // ),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(ImageUtils.onBoardingTopLeft),
                          SvgPicture.asset(ImageUtils.onBoardingTopRight),
                        ],
                      ),*/

                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Location",
                        style: TextStyle(
                          fontFamily: FontUtils.avertaBold,
                          fontSize: 3.35.t,
                          color: ColorUtils.darkText,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 6.w),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi posuere mattis mattis. Phasellus a imperdiet justo, quis pharetra nibh.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: FontUtils.avertaDemoRegular,
                            fontSize: 2.t,
                            color: ColorUtils.jobsDescription,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),

                    ],
                  ),
                ),
                /*Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SvgPicture.asset(ImageUtils.onBoardingBottomLeft),
                      SvgPicture.asset(ImageUtils.onBoardingBottomRight),
                    ],
                  ),
                ),*/
              ],
            ),
          ),
        );
      },
    );

    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => locator<MainViewModel>(),
      disposeViewModel: false,
      builder: (context, model, child) {
        return SafeArea(
          //top: false,
          bottom: false,
          child: Scaffold(
            floatingActionButton: GestureDetector(
              onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  Support()));
              },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorUtils.greenColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 4.i,
                          // height: 1.h,
                          // width: 1.w,
                        ),
                      ),
                    ),
                    TweenAnimationBuilder(
                      tween: Tween(begin: 0.3, end: 0.7),
                      duration: Duration(seconds: 2),
                      builder: (context, value, child) {
                        return SizedBox(
                          width: 17.w,
                          height: 17.w,
                          child: CircularProgressIndicator(
                            value: double.parse(value.toString()),
                            color: ColorUtils.greenColor,
                            backgroundColor: Colors.transparent,
                            strokeWidth: 4,
                          ),
                        );
                      },
                    ),
                  ],
                )
            ),
            backgroundColor: Colors.white,
            body:
            Stack(
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 3.1.h,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(ImageUtils.onBoardingTopLeft),
                        SvgPicture.asset(ImageUtils.onBoardingTopRight),
                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                          Image.asset(
                            ImageUtils.secondGif,
                          ),
                          SizedBox(height: 5.h,),
                          Text("Location",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaBold,
                              fontSize: 3.35.t,
                              color: ColorUtils.darkText,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi posuere mattis mattis. Phasellus a imperdiet justo, quis pharetra nibh.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: FontUtils.avertaDemoRegular,
                                fontSize: 2.0.t,
                                color: ColorUtils.jobsDescription,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment:Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SvgPicture.asset(ImageUtils.onBoardingBottomLeft),
                      SvgPicture.asset(ImageUtils.onBoardingBottomRight),
                    ],
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

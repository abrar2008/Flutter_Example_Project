import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';

class JobsContainer extends StatelessWidget {

  final Color? backgroundColor;
  final String? image;
  final String? name;

  final Color currentJobBg ;
  final String? jobText ;
  final Color jobTextColor ;

  const JobsContainer({this.backgroundColor, this.image, this.name, this.currentJobBg = Colors.transparent, this.jobText, this.jobTextColor = Colors.transparent, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.h,),
                  SvgPicture.asset(image!,
                  //width: 6.w,
                  //height: 6.h,
                  ),
                  SizedBox(height: 2.h,),
                  Text(name!,
                    style: TextStyle(
                      fontFamily: FontUtils.avertaDemoRegular,
                      fontSize: 1.8.t,
                      color: ColorUtils.darkText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 1.5.w,
            top: 1.h,
            child: Container(
              decoration: BoxDecoration(
                color: currentJobBg,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                  vertical: 5.0,
                ),
                child: Text(jobText ?? "",
                  style: TextStyle(
                    fontFamily: FontUtils.avertaDemoRegular,
                    fontSize: 1.3.t,
                    color: ColorUtils.newJobsNotificationText,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

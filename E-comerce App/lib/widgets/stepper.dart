import 'package:flutter/material.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';

class MyStepper extends StatelessWidget {
  final int currentStep;
  const MyStepper({Key? key, required this.currentStep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: double.infinity,
                color: ColorUtils.greenColor,
                height: .1.h,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _stepWidget(1),
              _stepWidget(2),
              _stepWidget(3),
            ],
          ),
        ],
      ),
    );
  }
  Widget _stepWidget(int step){
    return   Container(
      padding: EdgeInsets.all(3.i),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentStep == step ? ColorUtils.greenColor : ColorUtils.textFieldColor),
      child: Center(
        child: Text(step.toString(),
          style: TextStyle(
            fontFamily:FontUtils.avertaSemiBold,
            fontSize: 1.7.t,
            color: Colors.white,
          ),
          // TextStyleUtils.medium
          //   .copyWith(fontSize: 1.8.t,color: step == currentStep ? Colors.white : MyColors.dark1),
        ),
      ),
    );
  }
}

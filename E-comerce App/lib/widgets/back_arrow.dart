import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/image_utils.dart';

class BackArrow extends StatelessWidget {
  //final VoidCallback? customTap;
  const BackArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        // child: SvgPicture.asset(ImageUtils.backArrow,
        // ),
       child: IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          icon: SvgPicture.asset(ImageUtils.backArrow,),
            color: ColorUtils.greenColor,
          onPressed: (){
            Navigator.pop(context);
          }
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/image_utils.dart';

class NavigationMenuButton extends StatelessWidget {

  const NavigationMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: ColorUtils.greenColor),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.5),
        child: SvgPicture.asset(ImageUtils.menuIcon,
        width: 2.3.w,
        height: 2.3.h,
        )
      ),
    );
  }
}

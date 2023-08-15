import 'package:flutter/material.dart';
import 'package:guily_app/widgets/colors.dart';

Widget buildDots(BuildContext context) {
  return Container(
    // width: MediaQuery.of(context).size.width * 0.6,
    child: Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.19,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                child: CircleAvatar(
                  backgroundColor: ColorTheme.color_theme_background,
                  radius: 5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.02,
                // width: MediaQuery.of(context).size.width * 0.2,
                child: CircleAvatar(
                  backgroundColor: ColorTheme.color_theme_background,
                  radius: 5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.02,
                // width: MediaQuery.of(context).size.width * 0.2,
                child: CircleAvatar(
                  backgroundColor: ColorTheme.color_theme_background,
                  radius: 5,
                ),
              ),
            ),
          ],
        ),
        // Align(
        //   // alignment: Alignment.bottomRight,
        //   child: Container(
        //     margin: EdgeInsets.only(left: 20),
        //     child: IconButton(
        //       icon: Icon(
        //         Icons.arrow_forward,
        //         color: ColorTheme.color_theme_background,
        //       ),
        //       onPressed: null,
        //     ),
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.bottomRight,
        //   // flex: 1,
        //   child: Container(
        //     // width: 50,
        //     // alignment: Alignment.bottomRight,
        //     child: Text("ss"),
        //   ),
        // ),
      ],
    ),
  );
}

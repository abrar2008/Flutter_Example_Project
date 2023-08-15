import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: non_constant_identifier_names
void Sort_menu(BuildContext context) {
  bool atoz = true;
  showModalBottomSheet(
      backgroundColor: Colors.white,
      // isScrollControlled: true,
      isDismissible: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      context: context,
      builder: (context) {
        return Stack(
          children: [
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.16),
                GestureDetector(
                  onTap: () {
                    atoz = false;
                  },
                  child: ListTile(
                    leading: SvgPicture.asset(
                      "assets/images/Group 60.svg",
                      fit: BoxFit.contain,
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      "Name - A to Z",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    trailing: atoz
                        ? SvgPicture.asset(
                            "assets/images/Group70.svg",
                            // fit: BoxFit.contain,
                            // height: 15,
                            // width: 15,
                          )
                        : Container(),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    "assets/images/Group 61.svg",
                    fit: BoxFit.contain,
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    "Name - Z to A",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    "assets/images/Group58.svg",
                    fit: BoxFit.contain,
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    "Newest first",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    "assets/images/Group 58.svg",
                    fit: BoxFit.contain,
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    "Oldest first",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    "assets/images/Group 66.svg",
                    fit: BoxFit.contain,
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    "Small size first",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    "assets/images/Group 67.svg",
                    fit: BoxFit.contain,
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    "Large size first",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Divider(
                          color: Colors.grey.withOpacity(0.5),
                          thickness: 2,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Sort by",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      });
}

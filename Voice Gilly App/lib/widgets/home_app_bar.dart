import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:guily_app/widgets/menu/sort_menu.dart';
import 'package:guily_app/screens/search_screen/search.dart';

Widget buildHome(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10.0, right: 10, top: 10, bottom: 10),
          child: Text(
            "Home",
            style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.09,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/Ellipse 22.png"),
            ),
          ),
          // padding: EdgeInsets.all(4),
          // alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => SearchView()));
              },
              child: SvgPicture.asset(
                "assets/images/Icon feather-search.svg",
                // height: 20,
                // width: 20,
              ),
            ),
          ),
        )

        // Padding(
        //   padding: EdgeInsets.all(10),
        //   child: Container(
        //     decoration: BoxDecoration(color: Colors.grey),
        //     child: Image(
        //       image: AssetImage("assets/ui/search (1).png "),
        //     ),
        //   ),
        // )
      ],
    ),
  );
}

Widget buildIcons(BuildContext context) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              print("asdasdas");
              // Navigator.push(context,
              //     CupertinoPageRoute(builder: (context) => Settings()));
            },
            child: SvgPicture.asset(
              "assets/images/Group 73.svg",
              // height: 20,
              // width: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Sort_menu(context);
              print("settings icons");
            },
            child: SvgPicture.asset(
              "assets/images/Group 72.svg",
              // height: 20,
              // width: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 8,
            right: 10,
            bottom: 8,
          ),
          child: GestureDetector(
            onTap: () {
              print("settings icons");
            },
            child: SvgPicture.asset(
              "assets/images/Select.svg",
              // height: 20,
              // width: 20,
            ),
          ),
        ),
        // IconButton(
        //   icon: Image.asset("assets/images/Icon ionic-ios-settings.svg"),
        //   onPressed: () {},
        // ),
        // IconButton(
        //   icon: Image.asset("assets/images/Icon ionic-ios-settings.svg"),
        //   // Icon(
        //   //   Icons.sort_by_alpha_sharp,
        //   //   size: 25,
        //   //   color: Colors.black,
        //   // ),
        //   onPressed: () {},
        // ),
        // GestureDetector(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text("Select"),
        //   ),
        //   onTap: () {
        //     print('select');
        //   },
        // ),
      ],
    ),
  );
}

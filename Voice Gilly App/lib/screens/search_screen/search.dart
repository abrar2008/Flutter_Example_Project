import 'package:guily_app/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.all(4),
                // color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.search,
                          color: ColorTheme.color_theme_background,
                        ),
                        // // TextFormField(),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: CupertinoTextField(
                            textInputAction: TextInputAction.next,
                            // onEditingComplete: () =>
                            //     // NextFocusAction(),
                            //     node.nextFocus(),
                            enabled: true,
                            padding: EdgeInsets.all(10),
                            placeholder: 'Search',
                            // placeholderStyle:
                            // TextStyle(fontSize: 14, color: Colors.grey[300]),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Icon(Icons.close),
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.005,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: ColorTheme.color_theme_background,
                          ),
                          Text(
                            "Search by filter name",
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              color: ColorTheme.color_theme_background,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///
                    ///Group 118.svg
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: SvgPicture.asset("assets/images/Group 118.svg"),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    "Search text is empty",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Morbi rhoncus arcu in libero mattis.",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

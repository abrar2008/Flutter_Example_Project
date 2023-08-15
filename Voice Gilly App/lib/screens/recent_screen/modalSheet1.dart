import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'CustomiseFavoriteOrders.dart';

class ModalSheet1 extends StatefulWidget {
  @override
  _ModalSheet1State createState() => _ModalSheet1State();
}

class _ModalSheet1State extends State<ModalSheet1> {
  bool showRecents = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: Alignment.bottomCenter,
      // color: Colors.red,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      // color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Divider(
              color: Colors.grey[300],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Recent and Favorites",
                // textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            // height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/settingicons/Rectangle 201.png"),
                  fit: BoxFit.cover,
                )),
            child: ListTile(
              title: Text(
                "Show recents",
                // textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: GestureDetector(
                onTap: () {
                  setState(() {
                    if (showRecents) {
                      showRecents = false;
                    } else {
                      showRecents = true;
                    }
                  });
                },
                child: Container(
                  child: CustomSwitchButton(
                    backgroundColor: showRecents ? Colors.blue : Colors.grey,
                    unCheckedColor: Colors.white,
                    animationDuration: Duration(milliseconds: 200),
                    checkedColor: Colors.white,
                    checked: showRecents,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (_) => CustomizeFavoriteOrders(),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              // height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/settingicons/Rectangle 201.png"),
                    fit: BoxFit.cover,
                  )),
              child: ListTile(
                title: Text(
                  "Customise Favorites Orders",
                  // textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            // height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle 198.png"),
                  fit: BoxFit.cover,
                )),
            child: ListTile(
              title: Text(
                "Clear Recents",
                // textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // trailing: Icon(
              //   Icons.keyboard_arrow_right,
              //   color: Colors.blue,
              // ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            // height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/settingicons/Rectangle 196.png"),
                  fit: BoxFit.cover,
                )),
            child: ListTile(
              title: Text(
                "Clear Favorites",
                // textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // trailing: Icon(
              //   Icons.keyboard_arrow_right,
              //   color: Colors.blue,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

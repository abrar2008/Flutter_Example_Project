import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/payment/payment.dart';
import 'package:guily_app/screens/settings_screen/moresettings/moresettings.dart';
import 'package:guily_app/widgets/colors.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  String _selected = "1";
  List<Map> _myLanguages = [
    {
      'id': '1',
      'name': 'Hours',
    },
    {
      'id': '2',
      'name': 'Day',
    },
    {
      'id': '3',
      'name': 'Month ',
    },
    {
      'id': '4',
      'name': 'Year',
    },
  ];

  var price = "\$50.00 / Hours ";
  var primerprice = "\$100.00 / Hours ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoreSettings()));
          },
          child: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Subscriptions',
          style: GoogleFonts.nunito(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // _subscri(),
              _otherPlanLayout(),
            ],
          ),
        ),
      ),
    );
  }

  ///other plan layouts
  Widget _otherPlanLayout() {
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.05,
          left: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            height: 30,
            width: 30,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 100,
                decoration: BoxDecoration(
                  color: ColorTheme.color_theme_background,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton(
                    style: GoogleFonts.nunito(
                      color: Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 19,
                      color: Colors.black38,
                    ),
                    isDense: true,
                    value: _selected,
                    onChanged: (newValue) {
                      setState(() {
                        _selected = newValue;
                        if (_myLanguages[1]['id'] == newValue) {
                          price = "\$100.00 / Day ";
                          primerprice = "\$200.00 / Day ";
                        } else if (_myLanguages[2]['id'] == newValue) {
                          price = "\$100.00 / Month ";
                          primerprice = "\$200.00 / Month ";
                        } else if (_myLanguages[0]['id'] == newValue) {
                          price = "\$100.00 / Hours ";
                          primerprice = "\$200.00 / Hours ";
                        } else if (_myLanguages[3]['id'] == newValue) {
                          price = "\$100.00 / Year ";
                          primerprice = "\$200.00 / Year ";
                        }
                      });
                    },
                    items: _myLanguages.map((myLangs) {
                      return DropdownMenuItem(
                          value: myLangs['id'].toString(),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(500),
                                ),
                              ),
                              Container(
                                child: Text(
                                  myLangs['name'],
                                ),
                              )
                            ],
                          ));
                    }).toList(),
                  ),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          _planRow(),
        ],
      ),
    );
  }

  Widget _planRow() {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _planBox('Basic', price, () {}),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          _planBox('Premium', primerprice, () {}),
        ],
      ),
    );
  }

  ///Standard plan box
  Widget _planBox(String textused, String price, Function() onTaping) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.04),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.redAccent[100],
          highlightColor: Colors.white,
          onTap: onTaping,
          child: Container(
            height: MediaQuery.of(context).size.width * 0.7,
            width: MediaQuery.of(context).size.width * 0.43,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildPlanLabel(textused),
                _buildPlanPrice(price),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20,
                      ),
                      _buildFeatureLabel('HD Video Support'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: _buildFeatureLabel(
                          'Simultaneous viewing\n up to 2 people',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentScreen()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 30,
                    decoration: BoxDecoration(
                      color: ColorTheme.color_theme_background,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Choose $textused",
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///build price
  Widget _buildPlanPrice(String price) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(
        price,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w900, fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }

  ///build feature row label
  Widget _buildFeatureLabel(String label) {
    return Text(
      label,
      style: TextStyle(
          letterSpacing: 0.2,
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 12),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildPlanLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(
        label,
        style: TextStyle(
            letterSpacing: 0.1,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }
}

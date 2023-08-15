import 'package:flutter/material.dart';

Widget buildLines(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 2.0,
        width: MediaQuery.of(context).size.width * 0.22,
        color: Colors.white.withOpacity(0.1),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      Container(
        margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 2.0,
        width: MediaQuery.of(context).size.width * 0.40,
        color: Colors.white.withOpacity(0.2),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      Container(
        margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 2.0,
        width: MediaQuery.of(context).size.width * 0.60,
        color: Colors.white.withOpacity(0.5),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
    ],
  );
}

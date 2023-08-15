import 'package:flutter/material.dart';

import 'package:travelapp/screen/detailpage.dart';
import 'package:travelapp/screen/splash_screen.dart';
import 'package:travelapp/widget/cardwidget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: 'Flutter Demo',

      home: Splash(),


    );
  }
}





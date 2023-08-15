import 'package:assinment/GetxHelper/FirebaseController.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:assinment/Screen/LoginPage.dart';
import 'package:assinment/Screen/Dashboard.dart';
class IsSignedIn extends GetWidget<FirebaseController> {
  @override
  Widget build(BuildContext context) {
    return Obx((){
      // return Get.find<FirebaseController>().user!=null ? Dashboard() : LoginPage();
    });
  }
}
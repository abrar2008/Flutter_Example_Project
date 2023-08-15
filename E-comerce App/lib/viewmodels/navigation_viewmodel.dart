

import 'package:flutter/cupertino.dart';
import 'package:hazrin/views/vendorApp/registration/sign_up.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';

class NavigationViewModel extends BaseViewModel{

  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  void navigateToVendorSignupScreen(){
    navigationKey.currentState!.push(PageTransition(child: SignUp(), type: PageTransitionType.fade));
  }

}
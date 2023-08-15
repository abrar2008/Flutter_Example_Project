// @dart=2.9
//import 'dart:html';

import 'package:flutter/material.dart';
import "package:sizer/sizer.dart";
import 'package:flutter/services.dart';
import 'Receipt.dart';
import 'adress.dart';
import 'arrived.dart';
import 'arriving.dart';
import 'arriving_details.dart';
import 'booking.dart';
import 'cancel_reason.dart';
import 'chatempty.dart';
import 'feedback.dart';
import 'menu.dart';
import 'ontrip.dart';
import 'payment_option.dart';
import 'retry_payment.dart';
import 'ride_option.dart';
import 'routes.dart';
import 'searchin_driver.dart';
import 'set_location.dart';
import 'sign_in.dart';
import 'sign_up.dart';
import 'terms_and_cond.dart';
import 'tipamount.dart';
import 'unpaid_order.dart';
import 'unsupported_loc.dart';
import 'verifycode.dart';
import 'verifycode_call.dart';
import 'verifycode_resendcode.dart';
import 'welcome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
        title:"Taxi_app",
        initialRoute: '/',
        routes: {
          '/': (context) =>  welcome(),
          MyRoute.termsRoute: (context) => TermsAndCondition(),
          MyRoute.signinRoute: (context) => signin(),
          MyRoute.signupRoute: (context) =>  signup(),
          MyRoute.menuRoute: (context) => menu(),
          MyRoute.bookingRoute: (context) => booking(),
          MyRoute.addressRoute: (context) => address(),
          MyRoute.ride_optRoute: (context) => ride_options(),
          MyRoute.payment_optRoute: (context) => payment(),
          MyRoute.search_driverRoute: (context) => search(),
          MyRoute.arriving_detailsRoute: (context) => arrivingdet(),
          MyRoute.arrivingRoute: (context) => arriving(),
          MyRoute.arrivedRoute: (context) => arrived(),
          MyRoute.ontripRoute: (context) => ontrip(),
          MyRoute.tipRoute: (context) => tipamount(),
          MyRoute.setlocationRoute: (context) => setlocation(),
          MyRoute.chatemptyRoute: (context) => chatempty(),
          MyRoute.cancelRoute: (context) => CancelReason(),
          MyRoute.feedbackRoute: (context) => Feed_back(),
          MyRoute.receiptRoute: (context) => Receipt(),
          MyRoute.retryRoute: (context) => RetryPayment(),
          MyRoute.unpaidRoute: (context) => UnpaidOrder(),
          MyRoute.unsupportedLocRoute: (context) => UnsupportedLoc(),
          MyRoute.verifyRoute: (context) => VerifyCode(),
          MyRoute.verifyresendRoute: (context) => VerifyCodeResendCode(),
          MyRoute.verifycallRoute: (context) => VerifyCodeCall(),
    
    
        },
        //home : signin(),
        //home : signup(),
        //home : address(),
        //home : booking(),
        //home:menu(),
        //home:ride_options(),
        //home: payment(),
        //home:welcome(),
        //home:setlocation(),
        //home:arriving(),
        //home:arrived(),
        //home:ontrip(),
        //home:tipamount(),
        //home: chatempty(),
        //home: chatempty2(),
        //home: chat(),
        //home:search(),
        //home:arrivingdet(),
        //home: Arriving_v2(),
        
    
          
      );
      }
    );
  }
}


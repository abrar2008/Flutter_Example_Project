
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/screen_utils.dart';
import 'package:hazrin/utils/size_config.dart';
import 'package:hazrin/viewmodels/navigation_viewmodel.dart';
import 'package:hazrin/views/on_boarding_screens/professional_vendors.dart';
import 'package:hazrin/views/splash.dart';
import 'package:hazrin/views/vendorApp/vendor_homescreen.dart';
import 'package:stacked_services/stacked_services.dart';

NavigationViewModel navigationViewModel = NavigationViewModel();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configure();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    navigatorKey: StackedService.navigatorKey,
    theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorUtils.greenColor,
    )),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.getInstance()..init(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            //return OTPVerification();
            return Splash();
            return ProfessionalVendors();
            return VendorHomeScreen();
          },
        );
      },
    );
  }
}

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/business_detail.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/vendor_details.dart';
import 'package:hazrin/views/vendorApp/vendor_payment_method/payment_method.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/stepper.dart';
import 'package:stacked/stacked.dart';
import 'package:hazrin/utils/extensions.dart';

class VendorStepper extends StatefulWidget {
  const VendorStepper({Key? key}) : super(key: key);

  @override
  State<VendorStepper> createState() => _VendorStepperState();
}

class _VendorStepperState extends State<VendorStepper> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VendorAuthViewModel>.reactive(
      viewModelBuilder: () => locator<VendorAuthViewModel>(),
      disposeViewModel: false,
      onModelReady: (model) => model.onSignUpStart(),
      builder: (context, model, child) {
        return WillPopScope(
          onWillPop: model.onSignUpBack,
          child: SafeArea(
            top: false,
            bottom: false,
            child: GestureDetector(
              onTap: context.unFocus,
              child: Scaffold(
                backgroundColor: Colors.white,
                resizeToAvoidBottomInset: model.currentDetailStep == 2
                    || model.currentDetailStep == 3? true : false,
                body: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: context.getPadding().top + 3.h),
                      Container(margin: EdgeInsets.only(left: 4.w),child: BackArrow()),
                      SizedBox(height: 5.2.h),

                      MyStepper(currentStep: model.currentDetailStep),
                      Expanded(
                        child: PageTransitionSwitcher(
                          duration: const Duration(milliseconds: 300),
                          reverse: true,
                          transitionBuilder: (
                              Widget child,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              ) {
                            return SharedAxisTransition(
                              child: child,
                              animation: animation,
                              secondaryAnimation: secondaryAnimation,
                              transitionType:
                              SharedAxisTransitionType.horizontal,
                            );
                          },
                          child: model.currentDetailStep == 1
                              ? VendorDetails()
                              : model.currentDetailStep == 2
                              ? BusinessDetail()
                              : PaymentMethods(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

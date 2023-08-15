import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/select_service_category.dart';
import 'package:hazrin/views/vendorApp/vendor_payment_method/vendor_payment_bankTransfer.dart';
import 'package:hazrin/views/vendorApp/vendor_payment_method/vendor_payment_easypaisa.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';
import 'package:hazrin/utils/extensions.dart';

enum MethodOfPayment { empty, cash, easyPaisa, bank }

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  MethodOfPayment? character;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => locator<MainViewModel>(),
      disposeViewModel: false,
      builder: (context, model, child) {
        return SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 6.h,
                        ),
                        // BackArrow(),
                        // SizedBox(height: 12.0.h,),
                        Text(
                          "Payment Methods",
                          style: TextStyle(
                            fontFamily: FontUtils.avertaSemiBold,
                            fontSize: 3.0.t,
                            color: ColorUtils.darkText,
                          ),
                        ),
                        SizedBox(
                          height: 3.75.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(color: ColorUtils.greenColor),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 0.5.h),
                                child: ListTile(
                                  contentPadding:
                                      EdgeInsets.only(left: 4.w, right: 0.5.w),
                                  leading: Container(
                                    child: SizedBox(
                                      width: 55.w,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 12.25.w,
                                            height: 6.h,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                  color: ColorUtils.greenColor),
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                ImageUtils.money,
                                                width: 5.i,
                                                height: 5.i,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2.5.w,
                                          ),
                                          Text(
                                            "By Cash",
                                            style: TextStyle(
                                              fontFamily:
                                                  FontUtils.avertaDemoRegular,
                                              fontSize: 2.1.t,
                                              color: ColorUtils.greenColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  trailing: Radio<MethodOfPayment>(
                                    activeColor: ColorUtils.greenColor,
                                    value: MethodOfPayment.cash,
                                    groupValue: character,
                                    onChanged: (MethodOfPayment? value) {
                                      setState(() {
                                        character = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0.35.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0.5.h),
                                child: ListTile(
                                  contentPadding:
                                      EdgeInsets.only(left: 4.w, right: 0.5.w),
                                  leading: Container(
                                    child: SizedBox(
                                      width: 55.w,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 12.25.w,
                                            height: 6.h,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                  color: ColorUtils.greenColor),
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                ImageUtils.easyPaisa,
                                                width: 5.i,
                                                height: 5.i,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2.5.w,
                                          ),
                                          Text(
                                            "Easy Paisa",
                                            style: TextStyle(
                                              fontFamily:
                                                  FontUtils.avertaDemoRegular,
                                              fontSize: 2.1.t,
                                              color: ColorUtils.greenColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  trailing: Radio<MethodOfPayment>(
                                    activeColor: ColorUtils.greenColor,
                                    value: MethodOfPayment.easyPaisa,
                                    groupValue: character,
                                    onChanged: (MethodOfPayment? value) {
                                      setState(() {
                                        character = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0.35.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0.5.h),
                                child: ListTile(
                                  contentPadding:
                                      EdgeInsets.only(left: 4.w, right: 0.5.w),
                                  leading: Container(
                                    child: SizedBox(
                                      width: 55.w,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 12.25.w,
                                            height: 6.h,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(6)),
                                              border: Border.all(
                                                  color: ColorUtils.greenColor),
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                ImageUtils.bank,
                                                width: 5.i,
                                                height: 5.i,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2.5.w,
                                          ),
                                          Text(
                                            "Bank Transfer",
                                            style: TextStyle(
                                              fontFamily:
                                                  FontUtils.avertaDemoRegular,
                                              fontSize: 2.1.t,
                                              color: ColorUtils.greenColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  trailing: Radio<MethodOfPayment>(
                                    activeColor: ColorUtils.greenColor,
                                    value: MethodOfPayment.bank,
                                    groupValue: character,
                                    onChanged: (MethodOfPayment? value) {
                                      setState(() {
                                        character = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                  child: CustomButton(
                    onButtonPressed: () {
                      if (character == MethodOfPayment.easyPaisa)
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: EasyPaisaMethod()));
                      if (character == MethodOfPayment.bank)
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: BankTransferMethod()));
                      if (character == MethodOfPayment.cash)
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: ServiceCategory()));
                    },
                    textValue: "Continue",
                    height: 6.15,
                  ),
                ),
                SizedBox(
                  height: 7.0.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

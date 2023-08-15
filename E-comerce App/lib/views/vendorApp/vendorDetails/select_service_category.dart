import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/api/service.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/viewmodels/vendor_auth_viewmodel.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/pending_approval.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/select_service.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';

class ServiceCategory extends StatefulWidget {
  ServiceCategory({
    Key? key,
  }) : super(key: key);

  @override
  _ServiceCategoryState createState() => _ServiceCategoryState();
}

class _ServiceCategoryState extends State<ServiceCategory> {
  List allCategories = [];
  // List allCategories = [
  //   "Selling Product or Material",
  //   "Providing Delivery",
  //   "Installation",
  //   "Repair",
  //   "Service",
  //   "Maintenance",
  // ];

  List<bool>? selectedCategory;
  bool? selectedValue;

  @override
  void initState() {
    //getdata();
    super.initState();
    //print(allCategories.length);
    //selectedCategory = List<bool>.filled(allCategories.length, false);
  }

  /*void getdata() async {
    UserData udata = await VendorAuthViewModel.fetchdata();
    print("-----------get data from main page---");
    for (int i = 0; i < udata.data!.categories!.length; i++) {
      // print(udata.data!.categories![i].categoryName);
      // udata.data!.subservices![0].subServiceName;
      allCategories.add(udata.data!.categories![i].categoryName);
    }
    selectedCategory = List<bool>.filled(udata.data!.categories!.length, false);
    //print(allCategories.first);
  }*/

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return ColorUtils.greenColor;
      }
      return ColorUtils.greenColor;
    }

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
                    margin: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 6.h,
                        ),
                        BackArrow(),
                        SizedBox(
                          height: 4.7.h,
                        ),
                        Text(
                          "Select Service Category",
                          style: TextStyle(
                            fontFamily: FontUtils.avertaSemiBold,
                            fontSize: 3.0.t,
                            color: ColorUtils.darkText,
                          ),
                        ),
                        SizedBox(
                          height: 10.5.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(color: ColorUtils.greenColor),
                          ),
                          child: ListView.separated(
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      //Text(allCategories[0]),
                                      // Container(
                                      //   color: Colors.red,
                                      //   child: CustomCheckBox(
                                      //       checkBoxSize: 13.0,
                                      //     borderWidth: 5.0,
                                      //       borderRadius: 4,
                                      //       value: selectedCategory![index],
                                      //       onChanged: (val) {
                                      //         setState(() {
                                      //           selectedCategory![index] = val;
                                      //           selectedValue = val;
                                      //         });
                                      //       }
                                      //   ),
                                      // ),
                                      Container(
                                        height: 24.0,
                                        width: 24.0,
                                        child: Transform.scale(
                                          scale: 0.85,
                                          child: Checkbox(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith(getColor),
                                              value: selectedCategory![index],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              onChanged: (val) {
                                                setState(() {
                                                  selectedCategory![index] =
                                                      val!;
                                                  selectedValue = val;
                                                });
                                              }),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      Text(allCategories[index]),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 1.35.h,
                                );
                              },
                              itemCount: allCategories.length),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  onButtonPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: PendingApproval()));
                  },
                  textValue: "Continue",
                  height: 6.15,
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

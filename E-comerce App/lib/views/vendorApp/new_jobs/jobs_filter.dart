import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/utils/size_config.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/views/vendorApp/new_jobs/job_description.dart';
import 'package:hazrin/views/vendorApp/new_jobs/new_jobs.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';
import 'package:hazrin/utils/extensions.dart';

class JobsFilter extends StatefulWidget {
  const JobsFilter({Key? key}) : super(key: key);

  @override
  _JobsFilterState createState() => _JobsFilterState();
}

class _JobsFilterState extends State<JobsFilter> {
  @override
  void initState() {
    selectedJob = "Electrical";
    super.initState();
  }

  List<String> jobsCategory = [
    'Electrical',
    'Mechanical',
    'Plumbing',
  ];

  List<String> cities = [
    'Karachi',
    'Islamabad',
    'Lahore',
  ];

  List<String> areas = [
    'North Nazimabad',
    'Defence',
    'Clifton',
  ];

  String? selectedJob;
  String? selectedCity;
  String? selectedArea;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => locator<MainViewModel>(),
      onModelReady: (model) {
        //model.onJobFilterFocus();
      },
      disposeViewModel: false,
      builder: (context, model, child) {
        return SafeArea(
          top: false,
          bottom: false,
          child: GestureDetector(
            onTap: () {
              context.unFocus();
            },
            child: Scaffold(
              //resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6.h,
                    ),
                    BackArrow(),
                    SizedBox(
                      height: 5.h,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Filter",
                                  style: TextStyle(
                                    fontFamily: FontUtils.avertaSemiBold,
                                    fontSize: 2.9.t,
                                    color: ColorUtils.darkText,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    model.jobFocusController.clear();
                                    selectedJob = null;
                                    selectedCity = null;
                                    selectedArea = null;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Clear all",
                                    style: TextStyle(
                                        fontFamily: FontUtils.avertaDemoRegular,
                                        fontSize: 1.75.t,
                                        color: ColorUtils.greenColor,
                                        decoration: TextDecoration.underline,
                                        decorationColor: ColorUtils.greenColor),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  "Job Category",
                                  style: TextStyle(
                                    fontFamily: FontUtils.avertaSemiBold,
                                    fontSize: 1.85.t,
                                    color: ColorUtils.greenColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.0)),
                                      border: Border.all(
                                        //width: 2.0,
                                        color: ColorUtils.greenColor,
                                      )),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 3.w,
                                      right: 5.w,
                                    ),
                                    child: DropdownButtonFormField<String>(
                                      isExpanded: true,
                                      decoration: InputDecoration(
                                          hintText: "Enter city",
                                          hintStyle: TextStyle(
                                            fontFamily:
                                                FontUtils.avertaDemoRegular,
                                            fontSize: 2.3.t,
                                            color:
                                                ColorUtils.jobCategoryFieldText,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          )),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                        size: 6.i,
                                      ),
                                      onChanged: (newValue) {
                                        selectedJob = newValue;
                                        setState(() {});
                                      },
                                      items: jobsCategory.map((job) {
                                        return DropdownMenuItem(
                                          value: job,
                                          child: new Text(
                                            job,
                                            style: TextStyle(
                                              fontFamily:
                                                  FontUtils.avertaDemoRegular,
                                              fontSize: 2.3.t,
                                              color: ColorUtils
                                                  .jobCategoryFieldText,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      value: selectedJob,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  "City",
                                  style: TextStyle(
                                    fontFamily: FontUtils.avertaSemiBold,
                                    fontSize: 1.85.t,
                                    color: ColorUtils.greenColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.0)),
                                      border: Border.all(
                                        //width: 2.0,
                                        color: ColorUtils.greenColor,
                                      )),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 3.w,
                                      right: 5.w,
                                    ),
                                    child: DropdownButtonFormField<String>(
                                      isExpanded: true,
                                      decoration: InputDecoration(
                                          hintText: "Enter city",
                                          hintStyle: TextStyle(
                                            fontFamily:
                                                FontUtils.avertaDemoRegular,
                                            fontSize: 2.3.t,
                                            color:
                                                ColorUtils.jobCategoryFieldText,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          )),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                        size: 6.i,
                                      ),
                                      onChanged: (newValue) {
                                        selectedCity = newValue;
                                        setState(() {});
                                      },
                                      items: cities.map((city) {
                                        return DropdownMenuItem(
                                          value: city,
                                          child: new Text(
                                            city,
                                            style: TextStyle(
                                              fontFamily:
                                                  FontUtils.avertaDemoRegular,
                                              fontSize: 2.3.t,
                                              color: ColorUtils
                                                  .jobCategoryFieldText,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      value: selectedCity,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  "Area",
                                  style: TextStyle(
                                    fontFamily: FontUtils.avertaSemiBold,
                                    fontSize: 1.85.t,
                                    color: ColorUtils.greenColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.0)),
                                      border: Border.all(
                                        //width: 2.0,
                                        color: ColorUtils.greenColor,
                                      )),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 3.w,
                                      right: 5.w,
                                    ),
                                    child: DropdownButtonFormField<String>(
                                      isExpanded: true,
                                      decoration: InputDecoration(
                                          hintText: "any area",
                                          hintStyle: TextStyle(
                                            fontFamily:
                                                FontUtils.avertaDemoRegular,
                                            fontSize: 2.3.t,
                                            color:
                                                ColorUtils.jobCategoryFieldText,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                          )),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                        size: 6.i,
                                      ),
                                      onChanged: (newValue) {
                                        selectedArea = newValue;
                                        setState(() {});
                                      },
                                      items: areas.map((area) {
                                        return DropdownMenuItem(
                                          value: area,
                                          child: new Text(
                                            area,
                                            style: TextStyle(
                                              fontFamily:
                                                  FontUtils.avertaDemoRegular,
                                              fontSize: 2.3.t,
                                              color: ColorUtils
                                                  .jobCategoryFieldText,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      value: selectedArea,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                /*Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    border: Border.all(color: ColorUtils.greenColor),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 6.0.h,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),
                                          //margin: EdgeInsets.only(top: 2.7.h,right: 3.5.w,left: 3.5.w),
                                          child: TextField(
                                            focusNode: model.jobFilterFocus,
                                            style: TextStyle(
                                                fontFamily: FontUtils.avertaDemoRegular,
                                                fontSize: 2.3.t,
                                                color: ColorUtils.greenColor
                                            ),
                                            controller: model.jobFocusController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              prefixIcon:
                                              Padding(
                                                padding: EdgeInsets.only(left: 4.0.w,right: 2.0.w),
                                                child: SvgPicture.asset(ImageUtils.searchShape,color:model.jobFilterFocus.hasFocus || model.jobFocusController.text.length != 0 ? ColorUtils.greenColor : ColorUtils.textFieldColor,width: 5.5.i,height: 5.5.i,),
                                              ),
                                              prefixIconConstraints: BoxConstraints(
                                                minWidth: 1.5.w,
                                                minHeight: 1.5.h,
                                              ),
                                              // contentPadding: EdgeInsets.only(top: 3.h, bottom: 4.h,right: 2.w),
                                              // isDense: true,
                                              contentPadding: EdgeInsets.only(top: 6.h, bottom: 4.h,right: 2.w,left: 4.w),
                                              isDense: true,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color:model.jobFocusController.text.length !=0 ? ColorUtils.greenColor : ColorUtils.textFieldColor),
                                                borderRadius: BorderRadius.circular(6),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: ColorUtils.greenColor),
                                                borderRadius: BorderRadius.circular(
                                                  6,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2.h,),
                                        Text("North Nazimabad",
                                        style: TextStyle(
                                          fontFamily: FontUtils.avertaDemoRegular,
                                          fontSize: 1.8.t,
                                          color: ColorUtils.greenColor
                                        ),
                                        ),
                                        SizedBox(height: 2.h,),
                                        Text("Defence",
                                          style: TextStyle(
                                              fontFamily: FontUtils.avertaDemoRegular,
                                              fontSize: 1.8.t,
                                              color: ColorUtils.greenColor
                                          ),
                                        ),
                                        SizedBox(height: 2.h,),
                                        Text("Clifton",
                                          style: TextStyle(
                                              fontFamily: FontUtils.avertaDemoRegular,
                                              fontSize: 1.8.t,
                                              color: ColorUtils.greenColor
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )*/
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            CustomButton(
                              onButtonPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        child: NewJobs()));
                              },
                              textValue: "Save",
                              height: 6.15,
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: (){
                    //     Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  JobDescription()));
                    //   },
                    //   child: Container(
                    //     width: double.infinity,
                    //     decoration: BoxDecoration(
                    //       color: ColorUtils.greenColor,
                    //       shape: BoxShape.rectangle,
                    //       borderRadius: BorderRadius.all(Radius.circular(2.i)),
                    //     ),
                    //     child: Padding(
                    //       padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                    //       child:
                    //       Text("Save",
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //           fontFamily: FontUtils.avertaSemiBold,
                    //           fontSize: 2.2.t,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

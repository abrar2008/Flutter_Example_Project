import 'package:custom_check_box/custom_check_box.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/upload_catalogue.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';

class SelectSubService extends StatefulWidget {
  const SelectSubService({Key? key}) : super(key: key);

  @override
  _SelectSubServiceState createState() => _SelectSubServiceState();
}

class _SelectSubServiceState extends State<SelectSubService> {

  List selectSubService = [
    {'serviceImage':ImageUtils.refgRepair,
      'text':'Refrigerator Repair',
      'description' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {'serviceImage':ImageUtils.deepFreezerRepair,
      'text':'Deep Freezer Repair',
      'description' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {'serviceImage':ImageUtils.waterDispenser,
      'text':'Water Dispenser Repair',
      'description' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {
      'serviceImage':ImageUtils.washingMachine,
      'text':'Washing Machine Repair',
      'description' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {
      'serviceImage':ImageUtils.microwaveOven,
      'text':'Microwave Oven Repair',
      'description' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {'serviceImage':ImageUtils.waterPump,
      'text':'Water Pump Installation',
      'description' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {'serviceImage':ImageUtils.tvRepair,
      'text':'TV Repair',
      'description' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
  ];

  List<bool>? selected;
  bool? selectedValue;
  int? currentIndex;
  Color containerBorder = ColorUtils.textFieldColor;

  @override
  void initState() {
    super.initState();
    selected = List<bool>.filled(selectSubService.length, false);
  }

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
            body: Container(
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6.5.h,),
                  BackArrow(),
                  SizedBox(height: 2.h,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3.8.h,),
                          Text("Select Sub Services",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaSemiBold,
                              fontSize: 3.t,
                              color: ColorUtils.darkText,
                            ),
                          ),
                          SizedBox(height: 3.5.h,),
                          Text("Home Appliances",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaSemiBold,
                              fontSize: 2.65.t,
                              color: ColorUtils.greenColor,
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          ListView.separated(
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 2.5.h,);
                              },
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: ColorUtils.greenColor,
                                      //currentIndex == index && selectedValue == true ? ColorUtils.greenColor : ColorUtils.textFieldColor
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 0.5.w, vertical: 1.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 3.w),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(8.0),
                                                child: Image.asset(selectSubService[index]['serviceImage'],
                                                  width: 16.5.i,
                                                  height: 16.5.i,
                                                ),
                                              ),
                                              SizedBox(width: 4.w,),
                                              Container(
                                                width: MediaQuery.of(context).size.width/2,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      selectSubService[index]['text'],
                                                      style: TextStyle(
                                                        fontFamily:
                                                        FontUtils.avertaSemiBold,
                                                        fontSize: 1.8.t,
                                                        color: ColorUtils.darkText,
                                                      ),
                                                    ),
                                                    SizedBox(height: 0.5.h,),
                                                    Text(
                                                      selectSubService[index]['description'],
                                                      style: TextStyle(
                                                        fontFamily:
                                                        FontUtils.avertaDemoRegular,
                                                        fontSize: 1.65.t,
                                                        color: ColorUtils.jobsDescription,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: SizedBox(
                                            height: 6.h,
                                            child: CustomCheckBox(
                                                checkBoxSize: 13.0,
                                                borderRadius: 4,
                                                value: selected![index],
                                                onChanged: (val) {
                                                  setState(() {
                                                    selected![index] = val;
                                                    selectedValue = val;
                                                    print(selectedValue);
                                                    if(selectedValue == true){
                                                      currentIndex = index;
                                                      containerBorder = ColorUtils.greenColor;
                                                    }
                                                  });
                                                }
                                            ),
                                          ),
                                        ),
                                        // SizedBox(
                                        //   height: 5.7.h,
                                        //   child: Checkbox(
                                        //       fillColor: MaterialStateProperty.resolveWith(getColor),
                                        //       shape: RoundedRectangleBorder(
                                        //           borderRadius: BorderRadius.all(
                                        //               Radius.circular(5.0))),
                                        //       value: selected![index],
                                        //       onChanged: (val) {
                                        //         setState(() {
                                        //           selected![index] = val!;
                                        //         });
                                        //       }),
                                        // ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: selectSubService.length),
                          SizedBox(height: 2.6.h,),

                          SizedBox(height: 1.5.h,),
                          // Text("Design & Decors",
                          //   style: TextStyle(
                          //     fontFamily: FontUtils.avertaSemiBold,
                          //     fontSize: 2.65.t,
                          //     color: ColorUtils.greenColor,
                          //   ),
                          // ),
                          // SizedBox(height: 1.h,),
                          // ListView.separated(
                          //     separatorBuilder: (context, index) {
                          //       return SizedBox(height: 2.5.h,);
                          //     },
                          //     physics: NeverScrollableScrollPhysics(),
                          //     shrinkWrap: true,
                          //     itemBuilder: (context, index) {
                          //       return Container(
                          //         decoration: BoxDecoration(
                          //           shape: BoxShape.rectangle,
                          //           borderRadius: BorderRadius.all(Radius.circular(10)),
                          //           border: Border.all(color: ColorUtils.greenColor,
                          //             //currentIndex == index && selectedValue == true ? ColorUtils.greenColor : ColorUtils.textFieldColor
                          //           ),
                          //         ),
                          //         child: Padding(
                          //           padding: EdgeInsets.symmetric(horizontal: 0.5.w, vertical: 1.h),
                          //           child: Row(
                          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //             // crossAxisAlignment: CrossAxisAlignment.start,
                          //             children: [
                          //               Container(
                          //                 margin: EdgeInsets.only(left: 3.w),
                          //                 child: Row(
                          //                   crossAxisAlignment: CrossAxisAlignment.start,
                          //                   children: [
                          //                     ClipRRect(
                          //                       borderRadius: BorderRadius.circular(8.0),
                          //                       child: Image.asset(selectSubService[index]['serviceImage'],
                          //                         width: 16.5.i,
                          //                         height: 16.5.i,
                          //                       ),
                          //                     ),
                          //                     SizedBox(width: 4.w,),
                          //                     Container(
                          //                       width: MediaQuery.of(context).size.width/2,
                          //                       child: Column(
                          //                         crossAxisAlignment: CrossAxisAlignment.start,
                          //                         children: [
                          //                           Text(
                          //                             selectSubService[index]['text'],
                          //                             style: TextStyle(
                          //                               fontFamily:
                          //                               FontUtils.avertaSemiBold,
                          //                               fontSize: 1.8.t,
                          //                               color: ColorUtils.darkText,
                          //                             ),
                          //                           ),
                          //                           SizedBox(height: 0.5.h,),
                          //                           Text(
                          //                             selectSubService[index]['description'],
                          //                             style: TextStyle(
                          //                               fontFamily:
                          //                               FontUtils.avertaDemoRegular,
                          //                               fontSize: 1.65.t,
                          //                               color: ColorUtils.jobsDescription,
                          //                             ),
                          //                           ),
                          //                         ],
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ),
                          //               Container(
                          //                 child: SizedBox(
                          //                   height: 6.h,
                          //                   child: CustomCheckBox(
                          //                       checkBoxSize: 13.0,
                          //                       borderRadius: 4,
                          //                       value: selected![index],
                          //                       onChanged: (val) {
                          //                         setState(() {
                          //                           selected![index] = val;
                          //                           selectedValue = val;
                          //                           print(selectedValue);
                          //                           if(selectedValue == true){
                          //                             currentIndex = index;
                          //                             containerBorder = ColorUtils.greenColor;
                          //                           }
                          //                         });
                          //                       }
                          //                   ),
                          //                 ),
                          //               ),
                          //               // SizedBox(
                          //               //   height: 5.7.h,
                          //               //   child: Checkbox(
                          //               //       fillColor: MaterialStateProperty.resolveWith(getColor),
                          //               //       shape: RoundedRectangleBorder(
                          //               //           borderRadius: BorderRadius.all(
                          //               //               Radius.circular(5.0))),
                          //               //       value: selected![index],
                          //               //       onChanged: (val) {
                          //               //         setState(() {
                          //               //           selected![index] = val!;
                          //               //         });
                          //               //       }),
                          //               // ),
                          //             ],
                          //           ),
                          //         ),
                          //       );
                          //     },
                          //     itemCount: selectSubService.length),
                          SizedBox(height: 2.6.h,),
                          CustomButton(
                            onButtonPressed: (){
                              model.navigationService.navigateTo(to: UploadCatalogue());
                            },
                            textValue: "Continue",
                            height: 6.15,
                          ),
                          SizedBox(height: 1.5.h,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

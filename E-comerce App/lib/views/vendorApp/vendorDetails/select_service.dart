import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/select_sub_service.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';
import 'package:custom_check_box/custom_check_box.dart';

class SelectService extends StatefulWidget {
  const SelectService({Key? key}) : super(key: key);

  @override
  _SelectServiceState createState() => _SelectServiceState();
}

class _SelectServiceState extends State<SelectService> {

  List selectService = [
    {'serviceImage':ImageUtils.homeAppliances,
      'text':'Home Appliances',
    },
    {'serviceImage':ImageUtils.electricPlug,
      'text':'Electricals',
    },
    {'serviceImage':ImageUtils.generator,
      'text':'Power Generator & Storage',
    },
    {
      'serviceImage':ImageUtils.plumbing,
      'text':'Sanitary & Plumbing',
    },
    {
      'serviceImage':ImageUtils.designDecors,
      'text':'Design & Decors',
    },
    {'serviceImage':ImageUtils.furniture,
      'text':'Furniture & Carpentry',
    },
    {'serviceImage':ImageUtils.glass,
      'text':'Aluminium & Glass',
    },
    {'serviceImage':ImageUtils.ironSteel,
      'text':'Iron & Steel',
    },
    {'serviceImage':ImageUtils.satellite,
      'text':'Satellite Dishes & TV Cables',
    },
    {'serviceImage':ImageUtils.safety,
      'text':'Safety Security & Automation',
    },
    {'serviceImage':ImageUtils.itHardware,
      'text':'IT-Hardware',
    },
    {'serviceImage':ImageUtils.iTSoftware,
      'text':'IT-Software',
    },
    {'serviceImage':ImageUtils.pestControl,
      'text':'Pest Control & Sanitization',
    },
    {'serviceImage':ImageUtils.constructionMaterial,
      'text':'Masonry & Construction Materials',
    },
    {'serviceImage':ImageUtils.officeSupplies,
      'text':'Office Supplies & stationary',
    },
    {'serviceImage':ImageUtils.rennovation,
      'text':'Rennovation/Construction Projects',
    },
  ];

  List<bool>? selected;
  bool? selectedValue;
  int? currentIndex;
  Color containerBorder = ColorUtils.textFieldColor;

  @override
  void initState() {
    super.initState();
    selected = List<bool>.filled(selectService.length, false);
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
                  SizedBox(height: 3.8.h,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Select Services",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaSemiBold,
                              fontSize: 3.t,
                              color: ColorUtils.darkText,
                            ),
                          ),
                          //SizedBox(height: 1.h,),
                          ListView.separated(
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 2.1.h,);
                              },
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(6)),
                                    border: Border.all(color: containerBorder,
                                      //currentIndex == index && selectedValue == true ? ColorUtils.greenColor : ColorUtils.textFieldColor
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 3.w),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(selectService[index]['serviceImage']),
                                            SizedBox(width: 4.w,),
                                            Text(
                                              selectService[index]['text'],
                                              style: TextStyle(
                                                fontFamily:
                                                FontUtils.avertaDemoRegular,
                                                fontSize: 1.65.t,
                                                color: ColorUtils.darkText,
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
                                );
                              },
                              itemCount: selectService.length),
                          SizedBox(height: 2.6.h,),
                          CustomButton(
                            onButtonPressed: (){
                              model.navigationService.navigateTo(to: SelectSubService());
                            },
                            textValue: "Continue",
                            height: 6.15,
                          ),
                          SizedBox(height: 1.8.h,),
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

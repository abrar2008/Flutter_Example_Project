import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/views/vendorApp/new_jobs/job_description.dart';
import 'package:hazrin/views/vendorApp/new_jobs/jobs_filter.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';

class NewJobs extends StatefulWidget {
  const NewJobs({Key? key}) : super(key: key);

  @override
  State<NewJobs> createState() => _NewJobsState();
}

class _NewJobsState extends State<NewJobs> {

  List jobs = [
    {
      "image" : ImageUtils.jobOne,
      "title" : "Mattress Cleaning",
      "description" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "location" : "Karachi",
      "date" : "22/10/2021",
      "quotations" : "25 Quotations Sent"
    },

    {
      "image" : ImageUtils.jobTwo,
      "title" : "Refrigerator Repair",
      "description" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "location" : "Karachi",
      "date" : "22/10/2021",
      "quotations" : "25 Quotations Sent"
    },

    {
      "image" : ImageUtils.jobThree,
      "title" : "Oven Repair",
      "description" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "location" : "Karachi",
      "date" : "22/10/2021",
      "quotations" : "25 Quotations Sent"
    },

    {
      "image" : ImageUtils.jobFour,
      "title" : "TV Repair",
      "description" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "location" : "Karachi",
      "date" : "22/10/2021",
      "quotations" : "25 Quotations Sent"
    },

    {
      "image" : ImageUtils.jobFive,
      "title" : "Washing Maching Repair",
      "description" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "location" : "Karachi",
      "date" : "22/10/2021",
      "quotations" : "25 Quotations Sent"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
        viewModelBuilder: ()=>locator<MainViewModel>(),
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
                  children: [
                    SizedBox(height: 6.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackArrow(),
                        Icon(Icons.notifications,
                          color: ColorUtils.greenColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New Jobs",
                          style: TextStyle(
                            fontFamily: FontUtils.avertaSemiBold,
                            fontSize: 2.9.t,
                            color: ColorUtils.darkText,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  JobsFilter()));
                          },
                            child: SvgPicture.asset(ImageUtils.filter,
                            width: 2.5.w,
                            height: 2.5.h,
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h,),
                    Expanded(
                      child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                          itemCount: jobs.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        child: JobDescription()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorUtils.bloodBankBg,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10.0),
                                              child: Image.asset(jobs[index]["image"],
                                                width: 19.w,
                                                height: 10.5.h,
                                              ),
                                          ),
                                          SizedBox(width: 3.w,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 1.h,),
                                              Text(jobs[index]["title"],
                                              style: TextStyle(
                                                fontFamily: FontUtils.avertaSemiBold,
                                                fontSize: 2.2.t,
                                                color: ColorUtils.darkText,
                                              ),
                                              ),
                                              SizedBox(height: 1.0.w,),
                                              Container(
                                                width: MediaQuery.of(context).size.width / 2,
                                                  child: Text(jobs[index]["description"],
                                                    style: TextStyle(
                                                      fontFamily: FontUtils.avertaDemoRegular,
                                                      fontSize: 1.8.t,
                                                      color: ColorUtils.jobsDescription,
                                                      height: 1.3,
                                                    ),
                                                  ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 1.5.h,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset(ImageUtils.locationPin),
                                              SizedBox(width: 2.2.w,),
                                              Text(jobs[index]["location"],
                                                style: TextStyle(
                                                  fontFamily: FontUtils.avertaDemoRegular,
                                                  fontSize: 1.65.t,
                                                  color: ColorUtils.jobsDescription,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(ImageUtils.calender),
                                              SizedBox(width: 2.2.w,),
                                              Text(jobs[index]["date"],
                                                style: TextStyle(
                                                  fontFamily: FontUtils.avertaDemoRegular,
                                                  fontSize: 1.65.t,
                                                  color: ColorUtils.jobsDescription,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(ImageUtils.quotationIcon),
                                              SizedBox(width: 2.2.w,),
                                              Text(jobs[index]["quotations"],
                                                style: TextStyle(
                                                  fontFamily: FontUtils.avertaDemoRegular,
                                                  fontSize: 1.65.t,
                                                  color: ColorUtils.jobsDescription,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 2.h,);
                        },
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

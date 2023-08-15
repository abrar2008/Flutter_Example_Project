import 'dart:ui';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/views/vendorApp/registration/sign_up.dart';
import 'package:hazrin/widgets/back_arrow.dart';
import 'package:hazrin/widgets/custom_button.dart';
import 'package:hazrin/widgets/jobdescriptionvideo.dart';
import 'package:hazrin/widgets/loader.dart';
import 'package:hazrin/widgets/page_manager.dart';
import 'package:hazrin/widgets/view_player.dart';
import 'package:hazrin/widgets/zoom_image_slider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';
import 'package:video_player/video_player.dart';

class JobDescription extends StatefulWidget {
  final int? index;

  const JobDescription({Key? key, this.index}) : super(key: key);

  @override
  _JobDescriptionState createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {


  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    // TODO: implement initState
    //initializeChewiePlayer(widget.index!);
    super.initState();
  }


  @override
  void dispose() {
    MainViewModel model = locator<MainViewModel>();
    model.disposing();
    super.dispose();
  }

  List descriptionImages = [
    ImageUtils.plumber,
    ImageUtils.electrician,
    ImageUtils.plumbingExpert,
    ImageUtils.plumbingFixing,
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      onModelReady: (model){
        model.initializePlayer(context);
        model.bufferedPositionStream();
        model.positionStream(context);
        model.durationStream();
        model.bufferedPositionStream();
      },
      viewModelBuilder: () => locator<MainViewModel>(),
      disposeViewModel: false,
      builder: (context, model, child) {
        return SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            floatingActionButton: Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                width: MediaQuery.of(context).size.width / 1,
                height: 7.h,
                //margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: ColorUtils.greenColor,
                  boxShadow: [
                    BoxShadow(
                      color: ColorUtils.greenColor.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  onPressed: (){
                    showLoginAlertDialog(context);
                  },
                  child: Text(
                    "Create Quote",
                    style: TextStyle(
                        fontFamily: FontUtils.avertaSemiBold,
                        fontSize: 2.0.t,
                        color: Colors.white),
                  ),
                ),
              ),

              // MaterialButton(
              //     onPressed: onButtonPressed,
              //   color: ColorUtils.greenColor,
              //   minWidth: MediaQuery.of(context).size.width /1,
              //   height: 7.h,
              //   textColor: Colors.white,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(6.0),
              //   ),
              //   // style: ElevatedButton.styleFrom(
              //   //     primary: ColorUtils.greenColor,
              //   //     shadowColor: ColorUtils.greenColor.withOpacity(0.25),
              //   //     shape: RoundedRectangleBorder(
              //   //         borderRadius: BorderRadius.circular(10.0)),
              //   //     minimumSize: Size(MediaQuery.of(context).size.width /1, 7.h),
              //   //   ),
              //     child: Text(
              //       textValue!,
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontFamily: FontUtils.avertaSemiBold,
              //         fontSize: 2.2.t,
              //         color: Colors.white,
              //       ),
              //     ),
              // ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            backgroundColor: Colors.white,
            body: Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackArrow(),
                      Icon(
                        Icons.notifications,
                        color: ColorUtils.greenColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: ColorUtils.bloodBankBg,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(2.i)),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsets.only(bottom: 3.h, top: 2.h, right: 3.w),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorUtils.greenColor,
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(2.i)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6.w, vertical: 1.25.h),
                                        child: Text(
                                          "Urgent",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: FontUtils.avertaSemiBold,
                                            fontSize: 1.7.t,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 2.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: 23.i,
                                            height: 23.i,
                                            child: Image.asset(
                                              ImageUtils.jobOne,
                                              //color: Colors.red,
                                              //colorBlendMode: BlendMode.multiply,
                                              //fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2.5.h,
                                          ),
                                          Text(
                                            "Pest Control & Sanitization • ",
                                            style: TextStyle(
                                              fontFamily: FontUtils.avertaSemiBold,
                                              fontSize: 2.0.t,
                                              color: ColorUtils.greenColor,
                                            ),
                                          ),
                                          Text(
                                            "Mattress Cleaning",
                                            style: TextStyle(
                                              fontFamily: FontUtils.avertaDemoRegular,
                                              fontSize: 2.0.t,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "Details",
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                    color: ColorUtils.greenColor,
                                    offset: Offset(0, -5))
                              ],
                              color: Colors.transparent,
                              fontFamily: FontUtils.avertaSemiBold,
                              fontSize: 2.0.t,
                              decoration: TextDecoration.underline,
                              decorationColor: ColorUtils.greenColor,
                              decorationThickness: 3,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Service Type",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaSemiBold,
                              fontSize: 2.5.t,
                              color: ColorUtils.darkText,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(2.i)),
                              border: Border.all(color: ColorUtils.greenColor),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
                              child: Row(
                                children: [
                                  SvgPicture.asset(ImageUtils.cleaningImage),
                                  SizedBox(width: 3.w,),
                                  Text("Cleaning",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaDemoRegular,
                                      fontSize: 2.0.t,
                                      color: ColorUtils.greenColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "Quotations",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaSemiBold,
                              fontSize: 2.5.t,
                              color: ColorUtils.darkText,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(2.i)),
                              border: Border.all(color: ColorUtils.greenColor),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                              child: Row(
                                children: [
                                  SvgPicture.asset(ImageUtils.quotation_icon),
                                  SizedBox(width: 3.w,),
                                  Text("25 Quotations Sent",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaDemoRegular,
                                      fontSize: 2.0.t,
                                      color: ColorUtils.greenColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "Special Instruction",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaSemiBold,
                              fontSize: 2.5.t,
                              color: ColorUtils.darkText,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi posuere mattis mattis. Phasellus a imperdiet justo, quis pharetra nibh. Mauris ultricies lorem nec lacus porttitor vulputate. In maximus arcu velit, a tempus ligula semper fringilla. Vivamus eget venenatis enim, at semper mauris. Praesent efficitur dictum dui vitae tempor.",
                            style: TextStyle(
                              height: 0.23.h,
                              fontFamily: FontUtils.avertaDemoRegular,
                              fontSize: 1.8.t,
                              color: ColorUtils.jobsDescription,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(2.i)),
                              border: Border.all(color: ColorUtils.greenColor),
                            ),
                            child: Padding(
                              padding:
                              //EdgeInsets.zero,
                              EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    //color: Colors.purple,
                                    child: CircleAvatar(
                                      radius: 5.5.i,
                                      backgroundImage:AssetImage(
                                        ImageUtils.audioUserPic
                                      ),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                  SizedBox(width: 1.w,),
                                  Container(
                                    //color: Colors.amber,
                                    child: ValueListenableBuilder<ButtonState>(
                                      valueListenable: model.pageManager.buttonNotifier,
                                      builder: (_, value, __) {
                                        switch (value) {
                                          case ButtonState.loading:
                                            return Container(
                                              margin: EdgeInsets.all(8.0),
                                              width: 32.0,
                                              height: 32.0,
                                              child: Loader(),
                                            );
                                          case ButtonState.paused:
                                            // return InkWell(
                                            //   onTap: (){
                                            //     model.play(context);
                                            //   },
                                            //     child: SvgPicture.asset(ImageUtils.audioPlayIcon,
                                            //     width: 3.w,
                                            //     height: 3.h,
                                            //     ),
                                            // );
                                            return IconButton(
                                              icon: Icon(
                                                Icons.play_arrow_rounded,
                                                color: ColorUtils.greenColor,
                                                //size: 10.i,
                                              ),
                                              iconSize: 10.i,
                                              padding: EdgeInsets.zero,
                                              constraints: BoxConstraints(),
                                              onPressed: () {
                                                model.play(context);
                                              },
                                            );
                                          case ButtonState.playing:
                                            return IconButton(
                                              icon: Icon(
                                                Icons.pause_outlined,
                                                color: ColorUtils.greenColor,
                                                size: 10.i,
                                              ),
                                              iconSize: 32.0,
                                              onPressed: () {
                                                model.pause();
                                              },
                                            );
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 0.w,),
                                  Expanded(
                                    child: Container(
                                      //height: SizeConfig.heightMultiplier * 1.4,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 1.w,
                                          //vertical: 0.5.h
                                      ),
                                      child: ValueListenableBuilder<ProgressBarState>(
                                        valueListenable: model.pageManager.progressNotifier,
                                        builder: (_, value, __) {
                                          return Container(
                                            //margin: EdgeInsets.only(top: 3.h),
                                            //color: Colors.red,

                                            child: ProgressBar(
                                              progressBarColor: ColorUtils.greenColor,
                                              thumbGlowColor: ColorUtils.greenColor.withOpacity(0.3),
                                              thumbRadius: 10.0,
                                              thumbColor: ColorUtils.greenColor,
                                              baseBarColor: ColorUtils.greenColor.withOpacity(0.2),
                                              bufferedBarColor: ColorUtils.greenColor.withOpacity(0.4),
                                              progress: value.current,
                                              buffered: value.buffered,
                                              total: value.total,
                                              timeLabelTextStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 0
                                              ),
                                              onSeek: (value) {
                                                model.seek(value);
                                                model.notifyListeners();
                                              },
                                            ),
                                          );
                                        },
                                      ),
                                      //ProgressBar(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 3.h,),

                          SizedBox(height: 3.h,),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(2.i)),
                              border: Border.all(color: ColorUtils.greenColor),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Images",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaSemiBold,
                                      fontSize: 2.5.t,
                                      color: ColorUtils.darkText,
                                    ),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Container(
                                    height: 11.h,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, PageTransition(child: ViewZoomedImage(index: widget.index,), type: PageTransitionType.fade));
                                            },
                                            child: Container(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(3.i),
                                                 child: Image.asset(descriptionImages[index],
                                                   width: 19.5.i,
                                                   fit: BoxFit.cover,
                                                 ),
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return SizedBox(width: 3.w,);
                                        },
                                        itemCount: descriptionImages.length
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 4.5.h,),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(2.i)),
                              border: Border.all(color: ColorUtils.greenColor),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Videos",
                                    style: TextStyle(
                                      fontFamily: FontUtils.avertaSemiBold,
                                      fontSize: 2.5.t,
                                      color: ColorUtils.darkText,
                                    ),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Container(
                                    height: 11.h,
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                return ViewPlayer();
                                              },),);
                                            },
                                              child: JobDescriptionVideos(url: "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"),
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return SizedBox(width: 3.w,);
                                          return SizedBox(width: 5.w,);
                                        },
                                        itemCount: 4
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "Address",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaSemiBold,
                              fontSize: 2.5.t,
                              color: ColorUtils.darkText,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                          Container(
                            width: MediaQuery.of(context).size.width/1,
                            height: 25.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              child: GoogleMap(
                                markers: Set<Marker>.of(model.markers),
                                zoomControlsEnabled: false,
                                myLocationEnabled: true,
                                myLocationButtonEnabled: true,
                                initialCameraPosition: model.kGooglePlex,
                                //circles: model.mCircles ?? {},
                                //model.circles ?? {},
                                mapType: MapType.normal,
                                onMapCreated: (GoogleMapController controller)async {
                                  model.controller.complete(controller);
                                  //model.getAddress();
                                },
                                //markers: model.markers!,
                                //polylines: Set<Polyline>.of(model.polylines.values),
                                //markers: model.markers!,
                                //Set<Marker>.of(model.newMarkers.values),
                                //markers: model.markers!,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "Preferred Date & Time",
                            style: TextStyle(
                              fontFamily: FontUtils.avertaSemiBold,
                              fontSize: 2.5.t,
                              color: ColorUtils.darkText,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorUtils.textFieldColor),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(2.i)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Mon, Oct 15",
                                          style: TextStyle(
                                            fontFamily: FontUtils.interRegular,
                                            fontSize: 1.8.t,
                                            color: ColorUtils.textFieldColor,
                                          ),
                                        ),
                                        SvgPicture.asset(ImageUtils.calenderIcon,
                                        color: ColorUtils.textFieldColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.w,),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorUtils.textFieldColor,),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(2.i)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("8:00 PM",
                                          style: TextStyle(
                                            fontFamily: FontUtils.interRegular,
                                            fontSize: 1.8.t,
                                            color: ColorUtils.textFieldColor,
                                          ),
                                        ),
                                        SvgPicture.asset(ImageUtils.timeIcon,
                                        color: ColorUtils.textFieldColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // SizedBox(height: 3.h,),
                          // CustomButton(
                          //   onButtonPressed: (){
                          //     showLoginAlertDialog(context);
                          //   },
                          //   textValue: "Create Quote",
                          //   height:6.15
                          // ),
                          SizedBox(height: 12.h,),
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
  showLoginAlertDialog(BuildContext context){
    Widget okButton = TextButton(
      child: Column(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorUtils.greenColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(2.i)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
                child: Text("Continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontUtils.avertaSemiBold,
                    fontSize: 1.8.t,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h,),
        ],
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return SignUp();
          },
        ));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.i))),
      title: SvgPicture.asset(ImageUtils.signInIcon),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Log In/Sign Up To Continue",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: FontUtils.avertaSemiBold,
                fontSize: 2.2.t,
                color: ColorUtils.darkText
            ),
          ),
          SizedBox(height: 2.h,),
          Text("Log In/Sign Up to create your quotation",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: FontUtils.avertaDemoRegular,
                fontSize: 1.6.t,
                color: ColorUtils.darkText
            ),
          ),
        ],
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

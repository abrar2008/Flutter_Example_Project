import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hazrin/app/locator.dart';
import 'package:hazrin/utils/color_utils.dart';
import 'package:hazrin/utils/dimensions.dart';
import 'package:hazrin/utils/extensions.dart';
import 'package:hazrin/utils/font_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/viewmodels/main_viewmodel.dart';
import 'package:hazrin/views/vendorApp/new_jobs/new_jobs.dart';
import 'package:hazrin/views/vendorApp/registration/sign_up.dart';
import 'package:hazrin/widgets/jobs_container.dart';
import 'package:hazrin/widgets/login_continue_dialog.dart';
import 'package:hazrin/widgets/navigation_menu_widget.dart';
import 'package:hazrin/widgets/scrolling_text.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stacked/stacked.dart';
import 'package:dotted_border/dotted_border.dart';


class VendorHomeScreen extends StatefulWidget {
  const VendorHomeScreen({Key? key}) : super(key: key);

  @override
  State<VendorHomeScreen> createState() => _VendorHomeScreenState();
}

class _VendorHomeScreenState extends State<VendorHomeScreen> {

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<MainViewModel>.reactive(
        viewModelBuilder: ()=>locator<MainViewModel>(),
        onModelReady: (model){
          model.addMarkers();
        },
        disposeViewModel: false,
        builder: (context, model, child) {
          return SafeArea(
            top: false,
            bottom: false,
              child: GestureDetector(
                onTap: (){
                  context.unFocus();
                },
                child: Scaffold(
                  backgroundColor: Colors.white,
                  floatingActionButton: FloatingActionButton(
                    elevation: 2,
                    onPressed: (){
                      //Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  NewJobs()));
                    },
                      backgroundColor: ColorUtils.greenColor,
                    child: SvgPicture.asset(ImageUtils.chatIcon)
                  ),
                  body: Column(
                    children: [
                      SizedBox(height: 6.h,),

                      //Top Bar
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //NavigationMenuButton(),

                            //Menu Button
                            SvgPicture.asset(
                              ImageUtils.menuIcon,
                              //width: 2.3.w,
                              //height: 2.3.h,
                            ),
                            SizedBox(width: 3.w,),

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorUtils.textFieldColor
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(8),
                                  ),
                                ),
                                child: TextField(
                                  onTap: () {},
                                  enabled: true,
                                  //focusNode: model.searchFocus,
                                  //controller: model.searchController,
                                  decoration: InputDecoration(
                                    prefixIconConstraints: BoxConstraints(
                                      minHeight: 2.h,
                                      minWidth: 2.w,
                                    ),
                                    prefixIcon: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                                      child: SvgPicture.asset(ImageUtils.searchIcon,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                    isDense: true,
                                    contentPadding:
                                    EdgeInsets.symmetric(vertical: 1.2.h
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 3.w,),


                            IconButton(
                                onPressed: (){
                                },
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                icon: Icon(Icons.notifications, color: ColorUtils.greenColor,)
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 3.h,),

                      //Ticker
                      Container(
                        color: ColorUtils.bloodBankColor,
                        padding: EdgeInsets.symmetric(vertical: .5.h),
                        child: ScrollingText(
                          text: "Blood Bank ( Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi posuere mattis mattis.",
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: FontUtils.avertaSemiBold,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                            fontSize: 1.8.t,
                          ),
                        ),
                      ),

                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(height: 3.h,),

                              //Jobs
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                                child: Text("Jobs",
                                  style: TextStyle(
                                    fontFamily: FontUtils.avertaSemiBold,
                                    fontSize: 2.3.t,
                                    color: ColorUtils.darkText,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.h,),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Expanded(
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  NewJobs()));
                                        },
                                        child: JobsContainer(
                                          backgroundColor: ColorUtils.newJobsBg,
                                          image: ImageUtils.briefCase,
                                          name: "New Jobs",
                                          currentJobBg: ColorUtils.newJobsNotificationBg,
                                          jobText: "2 new Jobs",
                                          jobTextColor: ColorUtils.newJobsNotificationText,
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 5.w,),

                                    Expanded(
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  NewJobs()));
                                        },
                                        child: JobsContainer(
                                          backgroundColor: ColorUtils.quotesBg,
                                          image: ImageUtils.quotedJobs,
                                          name: "Quoted Jobs",
                                          //currentJobBg: ColorUtils.newJobsNotificationBg,
                                          //jobText: "2 new Jobs",
                                          //jobTextColor: ColorUtils.newJobsNotificationText,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 2.h,),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                                child: Row(
                                  children: [

                                    Expanded(
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  NewJobs()));
                                        },
                                        child: JobsContainer(
                                          backgroundColor: ColorUtils.onGoingJobsBg,
                                          image: ImageUtils.ongoingJobs,
                                          name: "Ongoing Jobs",
                                          // currentJobBg: ColorUtils.newJobsNotificationBg,
                                          // jobText: "2 new Jobs",
                                          // jobTextColor: ColorUtils.newJobsNotificationText,
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 5.w,),

                                    Expanded(
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:  NewJobs()));
                                        },
                                        child: JobsContainer(
                                          backgroundColor: ColorUtils.completedJobsBg,
                                          image: ImageUtils.completedJobs,
                                          name: "Completed Jobs",
                                          //currentJobBg: ColorUtils.newJobsNotificationBg,
                                          //jobText: "2 new Jobs",
                                          //jobTextColor: ColorUtils.newJobsNotificationText,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.h,),

                              //Shop Orders
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                                child: Text("Shop Orders",
                                  style: TextStyle(
                                    fontFamily: FontUtils.avertaSemiBold,
                                    fontSize: 2.3.t,
                                    color: ColorUtils.darkText,
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.h,),

                              //Create Shop
                              GestureDetector(
                                onTap: (){
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return LoginContinueDialog(msg: 'Log In/Sign Up to create your quotation',);
                                      }
                                  );
                                  //model.navigationService.navigateTo(to: SignUp());
                                },
                                child: Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                                  child: DottedBorder(
                                      radius: Radius.circular(10.0),
                                      borderType: BorderType.RRect,
                                      padding: EdgeInsets.all(5.0),
                                      dashPattern: [10],
                                      strokeWidth: 1.5,
                                      color: ColorUtils.greenColor,
                                      child: Padding(
                                        padding:EdgeInsets.symmetric(vertical: 3.h),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SvgPicture.asset(ImageUtils.createShop),
                                              SizedBox(height: 1.5.h,),
                                              Text("Create Shop",
                                                style: TextStyle(
                                                  fontFamily: FontUtils.avertaSemiBold,
                                                  fontSize: 2.t,
                                                  color: ColorUtils.greenColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h,),

                              //Classified Ads
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                                child: Text("Classified Ads",
                                  style: TextStyle(
                                    fontFamily: FontUtils.avertaSemiBold,
                                    fontSize: 2.3.t,
                                    color: ColorUtils.darkText,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Container(
                                height: 20.h,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: model.classifiedAd.length,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: (){
                                        showAlertDialog(context);
                                      },
                                      child: Container(
                                        width: 80.w,
                                        margin: EdgeInsets.only(
                                          top: 10, bottom: 10, left: 5.w,
                                         right: index == model.classifiedAd.length - 1 ? 5.w : 0),
                                        decoration: BoxDecoration(
                                            color: ColorUtils.appleLogo,
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            image: DecorationImage(
                                                image: AssetImage(model.classifiedAd[index],),
                                                fit: BoxFit.cover
                                            ),
                                            //color: Colors.red,
                                            boxShadow: [BoxShadow(
                                              color: Colors.black.withOpacity(0.1),
                                              //spreadRadius: 1.i,
                                              blurRadius: 1.i,
                                              offset: Offset(0 , 3),
                                            )]
                                        ),
                                        /*child: Image.asset(classifiedAd[index],
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  ),*/
                                      ),
                                    );
                                  },
                                  separatorBuilder: (BuildContext context, int index) {
                                    return SizedBox(width: 0.w,);
                                  },),
                              ),
                              SizedBox(height: 3.h,),

                              //Offers & Promotions
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                                child: Text("Offers & Promotions",
                                  style: TextStyle(
                                    fontFamily: FontUtils.avertaSemiBold,
                                    fontSize: 2.3.t,
                                    color: ColorUtils.darkText,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Container(
                                height: 20.h,
                                child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: model.offersPromotion.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 80.w,
                                      // height: 20.h,
                                      margin: EdgeInsets.only(
                                          top: 10, bottom: 10, left: 5.w,
                                          right: index == model.offersPromotion.length - 1 ? 5.w : 0),
                                      decoration: BoxDecoration(
                                          color: ColorUtils.appleLogo,
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          image: DecorationImage(
                                              image: AssetImage(model.offersPromotion[index],),
                                              fit: BoxFit.cover
                                          ),
                                          //color: Colors.red,
                                          boxShadow: [BoxShadow(
                                            color: Colors.black.withOpacity(0.1),
                                            //spreadRadius: 1.i,
                                            blurRadius: 1.i,
                                            offset: Offset(0 , 3),
                                          )]
                                      ),
                                      /*child: Image.asset(classifiedAd[index],
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  ),*/
                                    );
                                  },
                                  separatorBuilder: (BuildContext context, int index) {
                                    return SizedBox(width: 0.w,);
                                  },),
                              ),
                              SizedBox(height: 3.h,),

                              //Blood Bank
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Blood Bank",
                                      style: TextStyle(
                                        fontFamily: FontUtils.avertaSemiBold,
                                        fontSize: 2.3.t,
                                        color: ColorUtils.darkText,
                                      ),
                                    ),
                                    Text("See all",
                                      style: TextStyle(
                                          fontFamily: FontUtils.avertaDemoRegular,
                                          fontSize: 1.7.t,
                                          color: ColorUtils.greenColor,
                                          decoration: TextDecoration.underline,
                                          decorationColor: ColorUtils.greenColor
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.h,),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: Dimensions.containerHorizontalPadding),
                                decoration: BoxDecoration(
                                  color: ColorUtils.bloodBankBg,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.5.h),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    borderRadius: BorderRadius.all(Radius.circular(2.i)),
                                                    color: Colors.white
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 5.5.w, vertical: 1.8.h),
                                                  child: SvgPicture.asset(ImageUtils.bloodBank,
                                                    width: 5.w,
                                                    height: 5.h,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 2.w,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Ahmed Raza",
                                                    style: TextStyle(
                                                      fontFamily: FontUtils.avertaSemiBold,
                                                      fontSize: 2.2.t,
                                                      color: ColorUtils.darkText,
                                                    ),
                                                  ),
                                                  SizedBox(height: 1.h,),
                                                  Row(
                                                    children: [
                                                      Text("Hospital: ",
                                                        style: TextStyle(
                                                          fontFamily: FontUtils.avertaSemiBold,
                                                          fontSize: 1.6.t,
                                                          color: ColorUtils.jobsDescription,
                                                        ),
                                                      ),
                                                      Text("Indus Hospital",
                                                        style: TextStyle(
                                                          fontFamily: FontUtils.avertaDemoRegular,
                                                          fontSize: 1.6.t,
                                                          color: ColorUtils.jobsDescription,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 1.h,),
                                                  Row(
                                                    children: [
                                                      Text("Blood Group: ",
                                                        style: TextStyle(
                                                          fontFamily: FontUtils.avertaSemiBold,
                                                          fontSize: 1.6.t,
                                                          color: ColorUtils.jobsDescription,
                                                        ),
                                                      ),
                                                      Text("A+",
                                                        style: TextStyle(
                                                          fontFamily: FontUtils.avertaDemoRegular,
                                                          fontSize: 1.6.t,
                                                          color: ColorUtils.jobsDescription,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 1.h,),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: ColorUtils.greenColor,
                                                      shape: BoxShape.rectangle,
                                                      borderRadius: BorderRadius.all(Radius.circular(5.i)),
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                                                      child: Text("Donate Blood",
                                                        style: TextStyle(
                                                          fontFamily: FontUtils.avertaSemiBold,
                                                          fontSize: 1.3.t,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: ColorUtils.bloodBankColor,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(2.5.i),
                                              child: SvgPicture.asset(ImageUtils.doubleChat,
                                                height: 2.4.h,
                                                width: 2.4.h,
                                              ),
                                            ),
                                          ),
                                        ],
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
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.h,),

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

  showAlertDialog(BuildContext context){
    Widget okButton = TextButton(
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorUtils.greenColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
                child: Text("Download App",
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
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.i))),
      title: SvgPicture.asset(ImageUtils.phone),
      content: Text("Download the user app to explore the classifieds",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: FontUtils.avertaSemiBold,
        fontSize: 2.2.t,
        color: ColorUtils.darkText,
        height: 0.16.h,
      ),
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

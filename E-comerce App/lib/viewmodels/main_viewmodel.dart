import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hazrin/api/loginmodel.dart';
import 'package:hazrin/modules/allServices/navigation_service.dart' as my_nav_service;
import 'package:hazrin/utils/common_functions.dart';
import 'package:hazrin/utils/dialog_utils.dart';
import 'package:hazrin/utils/image_utils.dart';
import 'package:hazrin/views/on_boarding_screens/professional_vendors.dart';
import 'package:hazrin/views/vendorApp/login/log_in.dart';
import 'package:hazrin/views/vendorApp/registration/otp_verification.dart';
import 'package:hazrin/views/vendorApp/vendor_homescreen.dart';
import 'package:hazrin/widgets/error_widget.dart';
import 'package:hazrin/widgets/page_manager.dart';
import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:video_player/video_player.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';

class MainViewModel extends BaseViewModel{

  var navigationService = my_nav_service.NavigationService();
  Completer<GoogleMapController> controller = Completer();
  List<Marker> markers = <Marker>[];
  PageManager pageManager = PageManager();
  ChewieController? chewieController;
  late AudioPlayer justPlayer;
  int audioPos = 0;
  int? currentTimeOfAudio;
  int? pauseTime;
  late VideoPlayerController videoPlayerController;
  FocusNode jobFilterFocus = new FocusNode();
  bool isJobFilterInFocus = false;
  final jobFocusController = TextEditingController();

  late SharedPreferences prefs;

  Data? user;

  List classifiedAd = [
    ImageUtils.imageTest,
    ImageUtils.imageTest,
    ImageUtils.imageTest,
    ImageUtils.imageTest,
  ];

  List offersPromotion = [
    ImageUtils.imageTest2,
    ImageUtils.imageTest2,
    ImageUtils.imageTest2,
    ImageUtils.imageTest2,
  ];

  void initializeSplash() async {

    prefs = await SharedPreferences.getInstance();

    if(prefs.getString('user') == 'null'){
      Timer(Duration(seconds: 3), ()=> navigationService.navigateToReplacement(to: ProfessionalVendors()));
    }
    else{

      Map<String, dynamic> json = jsonDecode(prefs.getString('user')!);
      user = Data.fromJson(json);

      //print(user!.data!.email);

      if(user == null){
        Timer(Duration(seconds: 3), ()=> navigationService.navigateToReplacement(to: ProfessionalVendors()));
      }
      else{
        Timer(Duration(seconds: 3), ()=> navigationService.navigateToReplacement(to: VendorHomeScreen()));
      }
    }

  }

  // final easyPaisaAccountController = TextEditingController();
  // final bankAccountTitleController = TextEditingController();
  // final bankAccountNumberController = TextEditingController();
  // final bankAccountNameController = TextEditingController();
  // final bankAccountSwiftController = TextEditingController();
  // final bankAccountBranchController = TextEditingController();
  // final bankAccountBranchCodeController = TextEditingController();

  // Future<bool> onSignUpBack() async {
  //   if (isSigningUp) {
  //     return false;
  //   }
  //   updateSignUpStep(currentSignUpStep - 1, true);
  //   if (currentSignUpStep == 0) {
  //     return true;
  //   }
  //   return false;
  // }

  // updateSignUpStep(int step, bool isGoingBack) async {
  //   if (!isGoingBack) {
  //     switch (step) {
  //       case 2:
  //         if (signUpEmailController.text.isEmpty) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Email is required'));
  //           return;
  //         }
  //         if (!signUpEmailController.text.isEmail) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Email is invalid'));
  //           return;
  //         }
  //         if (signUpPasswordController.text.isEmpty) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Password is required'));
  //           return;
  //         }
  //         if (signUpPasswordController.text.length < 6) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Password must be atleast 6 characters'));
  //           return;
  //         }
  //         if (userType == '') {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Select the user type, You want to Signup for'));
  //           return;
  //         }
  //         isCheckingUserExistance = true;
  //         notifyListeners();
  //         var isUserExists = await _authenticationService.isUserExists(signUpEmailController.text);
  //         isCheckingUserExistance = false;
  //         notifyListeners();
  //         if (isUserExists) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'This email is already in use'));
  //           return;
  //         }
  //         profilePicture = null;
  //         firstNameController.clear();
  //         lastNameController.clear();
  //         userNameController.clear();
  //         dateOfBirthController.clear();
  //         phoneNumberController.clear();
  //         addressController.clear();
  //         break;
  //       case 3:
  //         if (profilePicture == null) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Profile Picture is required'));
  //           return;
  //         }
  //         if (firstNameController.text.isEmpty) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Firstname is required'));
  //           return;
  //         }
  //         if (lastNameController.text.isEmpty) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Lastname is required'));
  //           return;
  //         }
  //         if (dateOfBirthController.text.isEmpty) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Date of birth is required'));
  //           return;
  //         }
  //         if (phoneNumberController.text.isEmpty) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Phonenumber is required'));
  //           return;
  //         }
  //         if (addressController.text.isEmpty) {
  //           DialogUtils().showDialog(MyErrorWidget(error: 'Address is required'));
  //           return;
  //         }
  //         cardNumberNotifer = ValueNotifier(-1);
  //         cardHolderNameController.clear();
  //         cardNumberController.clear();
  //         expirationDateController.clear();
  //         billingAddressController.clear();
  //         cardNumberController.addListener(() {
  //           if (cardNumberController.text.isNotEmpty) {
  //             cardNumberNotifer.value = int.parse(cardNumberController.text);
  //           } else {
  //             cardNumberNotifer.value = -1;
  //           }
  //         });
  //         break;
  //       default:
  //     }
  //   }
  //
  //   currentSignUpStep = step;
  //   notifyListeners();
  // }


  void onJobFilterFocus(){
    if(jobFilterFocus.hasFocus){
      isJobFilterInFocus = true;
    }else{
      isJobFilterInFocus = false;
    }
    notifyListeners();
  }

  addMarkers(){
    markers.add(
        Marker(
            markerId: MarkerId('SomeId'),
            position: LatLng(24.8169,67.1118),
            infoWindow: InfoWindow(
                title: 'The title of the marker'
            )
        )
    );
  }

   CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(24.8169, 67.1118),
    zoom: 14.4746,
  );

  videoThumbNail(){}

  initializePlayer(BuildContext context) async {
    justPlayer = AudioPlayer();
    await justPlayer.setUrl("https://aiota.live/audioebook/audios/271657file_example_MP3_700KB.mp3");
    justPlayer.playerStateStream.listen((playerState) async{
      final isPlaying = playerState.playing;
      final processingState = playerState.processingState;
      if (processingState == ProcessingState.loading ||
          processingState == ProcessingState.buffering) {
        pageManager.buttonNotifier.value = ButtonState.loading;
        notifyListeners();
      } else if (!isPlaying) {
        pageManager.buttonNotifier.value = ButtonState.paused;
        notifyListeners();
      }
      // else if (pauseTime == getPauseTime) {
      //   pageManager.buttonNotifier.value = ButtonState.paused;
      //   notifyListeners();
      // }
      else if (processingState != ProcessingState.completed) {
        pageManager.buttonNotifier.value = ButtonState.playing;
        //bookPlayed = false;
        notifyListeners();
      }
      // else if (processingState == ProcessingState.completed) {
      //   showRatingAppDialog(context);
      //   //bookPlayed = false;
      //   notifyListeners();
      // }
      else {
        await justPlayer.seek(Duration.zero);
        await justPlayer.pause();
        notifyListeners();
      }
    });
  }

  void positionStream(BuildContext context){
    justPlayer.positionStream.listen((position) async{
      final oldState = pageManager.progressNotifier.value;
      audioPos = position.inSeconds;
      currentTimeOfAudio = audioPos;
      if(audioPos == pauseTime){
        justPlayer.pause();
        notifyListeners();
      }
      pageManager.progressNotifier.value = ProgressBarState(
        current: position,
        buffered: oldState.buffered,
        total: oldState.total,
      );
    });
    //notifyListeners();
  }

  void durationStream() {
    justPlayer.durationStream.listen((totalDuration) {
      final oldState = pageManager.progressNotifier.value;
      pageManager.progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: oldState.buffered,
        total: totalDuration ?? Duration.zero,
      );
      notifyListeners();
      //print(totalAudioTime);
      Duration currentTimeOfAudio = oldState.current;
      print(currentTimeOfAudio);
      notifyListeners();
      notifyListeners();
    });
  }

  void bufferedPositionStream() {
    justPlayer.bufferedPositionStream.listen((bufferedPosition) {
      final oldState = pageManager.progressNotifier.value;
      pageManager.progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: bufferedPosition,
        total: oldState.total,
      );
    });
    //notifyListeners();
  }

  void play(BuildContext context) {
    justPlayer.play();
  }

  void pause() {
    justPlayer.pause();
  }

  void seek(Duration position) {
    justPlayer.seek(position);
    notifyListeners();
  }

  void disposing() {
    justPlayer.dispose();
  }
}
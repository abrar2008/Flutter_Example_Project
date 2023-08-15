import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:hazrin/api/loginmodel.dart';

//import 'package:hazrin/api/service.dart';
import 'package:hazrin/utils/api_client.dart';
import 'package:hazrin/utils/common_functions.dart';
import 'package:hazrin/utils/constants.dart';
import 'package:hazrin/utils/dialog_utils.dart';
import 'package:hazrin/views/vendorApp/login/log_in.dart';
import 'package:hazrin/views/vendorApp/registration/otp_verification.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/pending_approval.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/select_service.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/select_service_category.dart';
import 'package:hazrin/views/vendorApp/vendorDetails/vendor_cnic.dart';
import 'package:hazrin/views/vendorApp/vendor_homescreen.dart';
import 'package:hazrin/widgets/error_widget.dart';
import 'package:hazrin/modules/allServices/navigation_service.dart' as my_nav_service;
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:hazrin/utils/extensions.dart';

class VendorAuthViewModel extends BaseViewModel {

  var navigationService = my_nav_service.NavigationService();
  late SharedPreferences prefs;
  var dio = Dio();

  bool loginLoading = false;
  bool signupLoading = false;

  FocusNode signupUserNameFocus = new FocusNode();
  bool isSignupUserNameInFocus = false;
  final signupUserNameController = TextEditingController();
  FocusNode signupEmailFocus = new FocusNode();
  bool isSignupEmailInFocus = false;
  final signupEmailController = TextEditingController();
  FocusNode signupPasswordFocus = new FocusNode();
  bool isSignupPasswordInFocus = false;
  final signupPasswordController = TextEditingController();
  FocusNode signupMobileFocus = new FocusNode();
  bool isSignupMobileInFocus = false;
  final signupMobileController = TextEditingController();
  bool signupPasswordVisible = false;
  final codeController = TextEditingController();
  FocusNode loginEmailFocus = new FocusNode();
  bool isLoginEmailInFocus = false;
  final loginEmailController = TextEditingController();
  FocusNode loginPasswordFocus = new FocusNode();
  bool isLoginPasswordInFocus = false;
  final loginPasswordController = TextEditingController();
  bool loginPasswordVisible = false;
  File? profileFileImage;
  File? catalogueFileImage;
  String? profileImage = "";
  final pageController = PageController();
  final vendorFullNameController = TextEditingController();
  final vendorGenderController = TextEditingController();
  final vendorDOBController = TextEditingController();
  final vendorCNICExpiryController = TextEditingController();
  FocusNode businessNameFocus = new FocusNode();
  bool isBusinessNameInFocus = false;
  final vendorBusinessNameController = TextEditingController();
  FocusNode vendorNTNFocus = new FocusNode();
  bool isVendorNTNInFocus = false;
  final vendorNTNNumberController = TextEditingController();
  FocusNode vendorOfficeNumberFocus = new FocusNode();
  bool isVendorOfficeNumberInFocus = false;
  final vendorOfficeTelephoneNumberController = TextEditingController();
  FocusNode vendorAddressFocus = new FocusNode();
  bool isVendorAddressInFocus = false;
  final vendorAddressController = TextEditingController();
  FocusNode vendorBuildingNameFocus = new FocusNode();
  bool isVendorBuildingNameInFocus = false;
  final vendorBuildingNameController = TextEditingController();
  // FocusNode vendorAreaFocus = new FocusNode();
  // bool isVendorAreaInFocus = false;
  // final vendorAreaController = TextEditingController();
  FocusNode vendorShopNumberFocus = new FocusNode();
  bool isVendorShopNumberInFocus = false;
  final vendorShopNumberController = TextEditingController();
  FocusNode vendorZipCodeFocus = new FocusNode();
  bool isVendorZipCodeInFocus = false;
  final vendorZipCodeController = TextEditingController();
  FocusNode vendorReferralCodeFocus = new FocusNode();
  bool isVendorReferralCodeInFocus = false;
  final vendorReferralCodeController = TextEditingController();
  FocusNode vendorEmergencyNumberFocus = new FocusNode();
  bool isVendorEmergencyNumberInFocus = false;
  final vendorEmergencyNumberController = TextEditingController();
  final easyPaisaAccountController = TextEditingController();
  final bankAccountTitleController = TextEditingController();
  final bankAccountNumberController = TextEditingController();
  final bankAccountNameController = TextEditingController();
  final bankAccountSwiftController = TextEditingController();
  final bankAccountBranchController = TextEditingController();
  final bankAccountBranchCodeController = TextEditingController();
  int currentDetailStep = 1;
  PickedFile? _pickedFile;
  List images = [];
  var lowerValue;
  double sliderValue = 0.0;
  bool isChecked = false;
  FocusNode vendorCNICFocus = new FocusNode();
  bool isVendorCNICInFocus = false;
  var vendorCNICController = new MaskedTextController(mask: '00000-0000000-0');
  DateTime selectedDOB = DateTime.now();


  void initializeVendorSignup() {

    signupUserNameController.clear();
    signupEmailController.clear();
    signupPasswordController.clear();
    signupMobileController.clear();

    signupUserNameFocus.unfocus();
    signupEmailFocus.unfocus();
    signupPasswordFocus.unfocus();
    signupMobileFocus.unfocus();

  }

  void onSignupUserNameFocus() {
    if (signupUserNameFocus.hasFocus) {
      isSignupUserNameInFocus = true;
    } else {
      isSignupUserNameInFocus = false;
    }
    notifyListeners();
  }

  void onSignupEmailFocus() {
    if (signupEmailFocus.hasFocus) {
      isSignupEmailInFocus = true;
    } else {
      isSignupEmailInFocus = false;
    }
    notifyListeners();
  }

  void onSignupPasswordFocus() {
    if (signupPasswordFocus.hasFocus) {
      isSignupPasswordInFocus = true;
    } else {
      isSignupPasswordInFocus = false;
    }
    notifyListeners();
  }

  //get service
  /*static Future<UserData> fetchdata() async {
    // Autogenerated autogenerated;
    var response =
        await Dio().get('http://hazrin.aiota.live/api/Services/categories');
    print("-------------response----------");
    if (response.statusCode == 200) {
      return UserData.fromJson(response.data);

      // response.data;
    } else {
      throw Exception('Failed to load');
    }
  }*/

  // static Future<UserLogin> fetchlogin() async {
  //   // Autogenerated autogenerated;
  //   var response =
  //       await Dio().get('http://hazrin.aiota.live/api/users/loginUser');
  //   print("-------------response----------");
  //   if (response.statusCode == 200) {
  //     return UserLogin.fromJson(response.data);

  //     // response.data;
  //   } else {
  //     throw Exception('Failed to load');
  //   }
  // }

  void onSignupMobileFocus() {
    if (signupMobileFocus.hasFocus) {
      isSignupMobileInFocus = true;
    } else {
      isSignupMobileInFocus = false;
    }
    notifyListeners();
  }

  void onLoginEmailFocus() {
    if (loginEmailFocus.hasFocus) {
      isLoginEmailInFocus = true;
    } else {
      isLoginEmailInFocus = false;
    }
    notifyListeners();
  }

  void onLoginPasswordFocus() {
    if (loginPasswordFocus.hasFocus) {
      isLoginPasswordInFocus = true;
    } else {
      isLoginPasswordInFocus = false;
    }
    notifyListeners();
  }

  void onBusinessNameFocus() {
    if (businessNameFocus.hasFocus) {
      isBusinessNameInFocus = true;
    } else {
      isBusinessNameInFocus = false;
    }
    notifyListeners();
  }

  void onNTNFocus() {
    if (vendorNTNFocus.hasFocus) {
      isVendorNTNInFocus = true;
    } else {
      isVendorNTNInFocus = false;
    }
    notifyListeners();
  }

  void onOfficeNumberFocus() {
    if (vendorOfficeNumberFocus.hasFocus) {
      isVendorOfficeNumberInFocus = true;
    } else {
      isVendorOfficeNumberInFocus = false;
    }
    notifyListeners();
  }

  void onAddressFocus() {
    if (vendorAddressFocus.hasFocus) {
      isVendorAddressInFocus = true;
    } else {
      isVendorAddressInFocus = false;
    }
    notifyListeners();
  }

  void onBuildingNameFocus() {
    if (vendorBuildingNameFocus.hasFocus) {
      isVendorBuildingNameInFocus = true;
    } else {
      isVendorBuildingNameInFocus = false;
    }
    notifyListeners();
  }

  void onShopNumberFocus() {
    if (vendorShopNumberFocus.hasFocus) {
      isVendorShopNumberInFocus = true;
    } else {
      isVendorShopNumberInFocus = false;
    }
    notifyListeners();
  }

  void onZipCodeFocus() {
    if (vendorZipCodeFocus.hasFocus) {
      isVendorZipCodeInFocus = true;
    } else {
      isVendorZipCodeInFocus = false;
    }
    notifyListeners();
  }

  void onReferralCodeFocus() {
    if (vendorReferralCodeFocus.hasFocus) {
      isVendorReferralCodeInFocus = true;
    } else {
      isVendorReferralCodeInFocus = false;
    }
    notifyListeners();
  }

  void onEmergencyNumberFocus() {
    if (vendorEmergencyNumberFocus.hasFocus) {
      isVendorEmergencyNumberInFocus = true;
    } else {
      isVendorEmergencyNumberInFocus = false;
    }
    notifyListeners();
  }

  void userOtherDetail(String fullname, int gender, var date, int cnic, int cnicexpirydate, int userId) async {
    var form = FormData.fromMap({
      'fullname': fullname,
      'gender': gender,
      'dateofbirth': date,
      'cnicexpirydate': cnicexpirydate,
      'cnic': cnic,
      'userId': userId,
    });
    var response = await Dio().post(
        'http://hazrin.aiota.live/api/Business/userOtherDetail',
        data: {form});

    print("-------------response----------");
    if (response.statusCode == 200) {
      print(response.statusCode);

      // response.data;
    } else {
      throw Exception('Failed to load');
    }
  }

  loginVendor() {
    if (loginEmailController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Email is required",
      ));
      return;
    } else if (!loginEmailController.text.isEmail) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Email is invalid",
      ));
      return;
    } else if (loginPasswordController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Password is required",
      ));
      return;
    } else {
      loginUser(loginEmailController.text, loginPasswordController.text);
    }
  }

  void loginUser(var email, var password) async {

    try{
      loginLoading = true;
      notifyListeners();

      prefs = await SharedPreferences.getInstance();

      var form = FormData.fromMap({
        'email': email,
        'password': password,
      });
      var response = await dio.post(ApiClient.loginVendorUrl, data: form);

      print("-------------response----------");

      if (response.statusCode == 200) {
        if (response.data["status"] == true) {
          Data user = Data.fromJson(response.data["data"]);
          await prefs.setString('user', jsonEncode(user));
          navigationService.navigateToUntil(to: VendorHomeScreen());
          loginLoading = false;
          notifyListeners();
          print(response.data);
        }
        else {
          loginLoading = false;
          notifyListeners();
          DialogUtils().showDialog(MyErrorWidget(error: response.data["error"]["message"]));
        }
      }
      else {
        print(response.statusCode);
        loginLoading = false;
        notifyListeners();
        DialogUtils().showDialog(MyErrorWidget(error: 'Something went wrong. Please try again'));
        throw Exception('Failed to load');
      }
    }
    catch(e){
      print(e);
      DialogUtils().showDialog(MyErrorWidget(error: e.toString()));
      loginLoading = false;
      notifyListeners();
    }
  }

  createVendor() {
    if (signupUserNameController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(error: "Username is required"));
      return;
    }
    if (signupEmailController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(error: "Email is required"));
      return;
    }
    if (!signupEmailController.text.isEmail) {
      DialogUtils().showDialog(MyErrorWidget(error: "Email is invalid"));
      return;
    }
    if (signupPasswordController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(error: "Password is required"));
      return;
    }
    if (signupPasswordController.text.length < 7) {
      DialogUtils().showDialog(MyErrorWidget(error: "Password must be at least 8 characters"));
      return;
    }
    if (!CommonFunctions.hasOneUpperCase(signupPasswordController.text.trim())) {
      DialogUtils().showDialog(MyErrorWidget(error: "Password should contain at least one upper case"));
      return;
    }
    if (!CommonFunctions.hasOneLowerCase(signupPasswordController.text.trim())) {
      DialogUtils().showDialog(MyErrorWidget(error: "Password should contain at least one lower case"));
      return;
    }
    if (!CommonFunctions.hasOneDigit(signupPasswordController.text.trim())) {
      DialogUtils().showDialog(MyErrorWidget(error: "Password should contain at least one digit"));
      return;
    }
    if (!CommonFunctions.hasOneSpeicalCharacter(signupPasswordController.text.trim())) {
      DialogUtils().showDialog(MyErrorWidget(error: "Password should contain at least one special character"));
      return;
    }
    if (signupMobileController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(error: "Mobile number is required"));
      return;
    }

    signupVendor(
        signupUserNameController.text.toString(),
        signupEmailController.text.toString(),
        signupPasswordController.text.toString(),
        signupMobileController.text.toString(),
        Constants.vendor);

  }

  void signupVendor(var username, var email, var password, var phone, var type) async {

    try{
      signupLoading = true;
      notifyListeners();

      prefs = await SharedPreferences.getInstance();

      var params = FormData.fromMap({
        'email': email,
        'password': password,
        'username': username,
        'phone': phone,
        'type': type,
      });

      var response = await dio.post(ApiClient.registerVendorUrl, data: params);

      print("-------------response----------");

      if (response.statusCode == 200) {
        if (response.data["status"] == true) {
          UserLogin user = UserLogin.fromJson(response.data["data"]);
          await prefs.setString('user', jsonEncode(user));
          navigationService.navigateToUntil(to: OTPVerification());
          signupLoading = false;
          notifyListeners();
          print(response.data);
        }
        else {
          signupLoading = false;
          notifyListeners();
          DialogUtils().showDialog(MyErrorWidget(error: response.data["error"]["message"]));
        }
      }
      else {
        print(response.statusCode);
        signupLoading = false;
        notifyListeners();
        DialogUtils().showDialog(MyErrorWidget(error: 'Something went wrong. Please try again'));
        throw Exception('Failed to load');
      }
    }
    catch(e){
      print(e);
      DialogUtils().showDialog(MyErrorWidget(error: e.toString()));
      signupLoading = false;
      notifyListeners();
    }
  }

  onSignUpStart() {
    currentDetailStep = 1;
    // signUpEmailController.clear();
    // signUpPasswordController.clear();
  }

  Future<bool> onSignUpBack() async {
    updateSignUpStep(currentDetailStep - 1, true);
    if (currentDetailStep == 0) {
      navigationService.navigateTo(to: VendorCNIC());
      //return true;
    }
    return false;
  }

  easyPaisa() {
    if (easyPaisaAccountController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Account Number is required",
      ));
      return;
    } else {
      navigationService.navigateTo(to: ServiceCategory());
    }
  }

  bankTransfer() {
    if (bankAccountTitleController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Account title is required",
      ));
      return;
    } else if (bankAccountNumberController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Account Number is required",
      ));
      return;
    } else if (bankAccountNameController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Bank Name is required",
      ));
      return;
    } else if (bankAccountSwiftController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Swift Code is required",
      ));
      return;
    } else if (bankAccountBranchController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Branch Name is required",
      ));
      return;
    } else if (bankAccountBranchCodeController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Branch Name is required",
      ));
      return;
    } else {
      navigationService.navigateTo(to: ServiceCategory());
    }
  }

  termsConditions() {
    if (isChecked == false) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Please Accept Terms and Conditions",
      ));
      return;
    } else {
      navigationService.navigateTo(to: PendingApproval());
    }
  }

  updateSignUpStep(int step, bool isGoingBack) async {
    if (!isGoingBack) {
      switch (step) {
        case 2:
          // if (signUpEmailController.text.isEmpty) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Email is required'));
          //   return;
          // }
          // if (!signUpEmailController.text.isEmail) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Email is invalid'));
          //   return;
          // }
          // if (signUpPasswordController.text.isEmpty) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Password is required'));
          //   return;
          // }
          // if (signUpPasswordController.text.length < 6) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Password must be atleast 6 characters'));
          //   return;
          // }
          // if (userType == '') {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Select the user type, You want to Signup for'));
          //   return;
          // }
          //isCheckingUserExistance = true;
          //notifyListeners();
          // var isUserExists = await _authenticationService.isUserExists(signUpEmailController.text);
          // isCheckingUserExistance = false;
          // notifyListeners();
          // if (isUserExists) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'This email is already in use'));
          //   return;
          // }
          // profilePicture = null;
          // firstNameController.clear();
          // lastNameController.clear();
          // userNameController.clear();
          // dateOfBirthController.clear();
          // phoneNumberController.clear();
          // addressController.clear();
          break;
        case 3:
          // if (profilePicture == null) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Profile Picture is required'));
          //   return;
          // }
          // if (firstNameController.text.isEmpty) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Firstname is required'));
          //   return;
          // }
          // if (lastNameController.text.isEmpty) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Lastname is required'));
          //   return;
          // }
          // if (dateOfBirthController.text.isEmpty) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Date of birth is required'));
          //   return;
          // }
          // if (phoneNumberController.text.isEmpty) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Phonenumber is required'));
          //   return;
          // }
          // if (addressController.text.isEmpty) {
          //   DialogUtils().showDialog(MyErrorWidget(error: 'Address is required'));
          //   return;
          // }
          // cardNumberNotifer = ValueNotifier(-1);
          // cardHolderNameController.clear();
          // cardNumberController.clear();
          // expirationDateController.clear();
          // billingAddressController.clear();
          // cardNumberController.addListener(() {
          //   if (cardNumberController.text.isNotEmpty) {
          //     cardNumberNotifer.value = int.parse(cardNumberController.text);
          //   } else {
          //     cardNumberNotifer.value = -1;
          //   }
          // });
          break;
        default:
      }
    }

    currentDetailStep = step;
    notifyListeners();
  }

  Future<bool> getImage() async {
    ImagePicker picker = ImagePicker();
    var image = await picker.getImage(source: ImageSource.gallery);
    _pickedFile = image;
    profileFileImage = File(_pickedFile!.path);
    if (profileFileImage == null) {
      return false;
    } else {
      notifyListeners();
      return true;
    }
  }

  Future<bool> getCatalogueImage() async {
    ImagePicker picker = ImagePicker();
    var image = await picker.getImage(source: ImageSource.gallery);
    _pickedFile = image;
    catalogueFileImage = File(_pickedFile!.path);
    if (catalogueFileImage == null) {
      return false;
    } else {
      images.add(catalogueFileImage);
      notifyListeners();
      return true;
    }
  }

  vendorDetail() {
    if (vendorFullNameController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Name is Required",
      ));
      return;
    }
    // else if (selectedDOB) {
    //   DialogUtils().showDialog(MyErrorWidget(
    //     error: "Date is required",
    //   ));
    //   return;
    // }
    else if (vendorCNICController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "CNIC is required",
      ));
      return;
    } else if (vendorCNICExpiryController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "CNIC Expiry is required",
      ));
      return;
    } else {
      //navigationService.navigateTo(to: VendorCNIC());
      updateSignUpStep(2, false);
    }
  }

  vendorBusinessDetail() {
    if (vendorBusinessNameController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Business Name is Required",
      ));
      return;
    } else if (vendorAddressController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Address is required",
      ));
      return;
    } else if (vendorBuildingNameController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Building Name is required",
      ));
      return;
    } else if (vendorShopNumberController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Shop Number is required",
      ));
      return;
    } else if (vendorZipCodeController.text.isEmpty) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "Zip Code is required",
      ));
      return;
    } else if (vendorEmergencyNumberController.text.isEmpty &&
        vendorEmergencyNumberController.text.length != 12) {
      DialogUtils().showDialog(MyErrorWidget(
        error: "EmergencyNumber is required",
      ));
      return;
    } else {
      //navigationService.navigateTo(to: VendorCNIC());
      updateSignUpStep(3, false);
    }
  }

  void openAndSelectDob(BuildContext context) async {
    selectedDOB =
        await CommonFunctions.showDateOfBirthPicker(context, selectedDOB);
    notifyListeners();
  }

  /*void navigateToVendorSignupScreen(){
    navigationService.navigateToVendorSignupScreen();
  }*/

  // Future<bool> onSignUpBack() async {
  //   // if (isSigningUp) {
  //   //   return false;
  //   // }
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
}
// void loginUsersign(String fullname, int gender, var date, int cnic,
//     int cnicexpirydate, int userId) async {
//   var formData = FormData.fromMap({
//     'fullname': fullname,
//     'gender': gender,
//     'dateofbirth': date,
//     'cnicexpirydate': cnicexpirydate,
//     'cnic': cnic,
//     'userId': userId,
//   });

// void loginUs(String fullname, int gender, var date, int cnic,
//       int cnicexpirydate, int userId) async {
//     var formData = FormData.fromMap({
//       'username': fullname,
//       'gender': gender,
//       'dateofbirth': date,
//       'cnicexpirydate': cnicexpirydate,
//       'cnic': cnic,
//       'userId': userId,
//     });

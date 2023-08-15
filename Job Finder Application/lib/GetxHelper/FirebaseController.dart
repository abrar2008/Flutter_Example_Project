import 'package:firebase_auth/firebase_auth.dart';
import 'package:assinment/Screen/Dashboard.dart';
import 'package:assinment/Screen/LoginPage.dart';
import 'package:get/get.dart';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';


class FirebaseController extends GetxController{
   
  FirebaseAuth _auth = FirebaseAuth.instance;
 

 GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);  //initialization with scope as Email

void google_signIn() async{

    final GoogleSignInAccount googleUser = await googleSignIn.signIn();  //calling signIn method // this will open a dialog pop where user can select his email id to signin to the app

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;  

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleAuth.idToken,                                           //create a login credential
      accessToken: googleAuth.accessToken
    );

    final User user = (await _auth.signInWithCredential(credential).then((value) => Get.offAll(Dashboard())));  //if credential success, then using _auth signed in user data will be stored 

 }
 void google_signOut() async{
   await googleSignIn.signOut().then((value) => Get.offAll(LoginPage()));
}
}
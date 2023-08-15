import 'package:assinment/Screen/Dashboard.dart';
import 'package:assinment/Screen/Company.dart';
import 'package:assinment/Screen/HaveAccount.dart';
import 'package:assinment/Screen/LoginPage.dart';
import 'package:assinment/Screen/CompanyDetail.dart';
import 'package:assinment/Screen/CreateAccount.dart';

import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:assinment/isSignedIn.dart';
import 'InstanceBinding.dart';

import 'package:flutter/material.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
   //Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InstanceBinding(),
      title: 'Flutter Demo',
      initialRoute: '/',
       routes: {
        '/':(context)=> SplachScreen(),
        '/LoginPage':(context)=> LoginPage(),
        '/haveaccount':(context)=>  HaveAccount(),
        '/Createaccount':(context)=>  CreateAccount(),
 
        '/dashboard':(context)=>Dashboard(),
        '/companyVeiw':(context)=>CompanyVeiw(),
        '/companyDetail':(context)=>CompanyDetail(),
      },
      
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
    // home: IsSignedIn(),
         

    );
  }
}

class SplachScreen extends StatefulWidget {
  const SplachScreen({ Key key }) : super(key: key);



  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  @override
  void initState() {
   
    super.initState();
    Future.delayed(Duration(
    seconds: 3,
    ), (){
      Get.toNamed('/LoginPage');

    }
    
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: Container(
        
          decoration: BoxDecoration(
            
          image: DecorationImage(
            image: AssetImage("assets/main.png"),
            fit: BoxFit.cover,
            
          ),
          ),
         child: Center(
           child:Image.asset('assets/images/logo.PNG',
           height: 300.0,
           width: 300.0,
           ),
         ),
       ),
    );
  }
}
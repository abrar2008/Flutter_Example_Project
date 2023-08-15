import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/CustomeTextFormField.dart';
import '../widget/colors_schemes.dart';
import '../widget/constants.dart';
import 'ForgetPassword.dart';
import 'LoginScreen.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();

}

class _SignupScreenState extends State<SignupScreen> {

  final formKey = GlobalKey<FormState>();
  // GetCustomerController _getCustomerController = GetCustomerController();
  final _customercodeController = TextEditingController();
  final _LocationcodeController = TextEditingController();
  final _passwordController = TextEditingController();
  bool rememberMe = false;
  bool flag = false;



  // RegisterFormController _mycityController = Get.put(RegisterFormController());
  //
  //  Future getitemlist() async {
  //
  //    await _mycityController.getRequestApi(context: context, endPoint: NetworkStrings.GET_city_name);
  //  }

  @override
  void initState() {
    // if (_mycityController.itemList.isEmpty) getitemlist();

    // if (_mycityController.getFacilities.isEmpty) getfacilities();
// mainlist();
    super.initState();


  }
  // final themeController = Get.find<Homecontroller>();
  @override
  Widget build(BuildContext context) {

    Future<bool> _onWillPop() async {
      return (
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: new Text('Are you sure you want to exit?'),

              actions: <Widget>[


                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(false), //<-- SEE HERE
                  child: new Text('No'),
                ),
                TextButton(
                  onPressed: () {

                    SystemNavigator.pop();

                  },
                  // <-- SEE HERE
                  child: new Text('Yes'),
                ),



              ],
            ),
          )) ??
          false; //<-- SEE HERE
    }

    return Container(

      height: MediaQuery.of(context).size.height,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage("assets/images/bg.jpg"),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child:
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Text(
              "V- 28-02-23",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black

              ),
            ),
          ),
          elevation: 0,
        ),
        body: SafeArea(

          child: WillPopScope(
            onWillPop: _onWillPop,
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [

                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child:
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [



                              Container(
                                width: 200,
                                height: 200.00,
                                child: Image.asset("assets/images/logo1.png"),
                              ),
                              // const Text(
                              //   "Syngenta App",
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold, fontSize: 24,
                              //     color:  Colors.black,
                              //
                              //   ),
                              // ),
                              Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 10),
                                  child: const Text(
                                    'Welcome ',
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold,color: primaryColor),
                                  )),
                              Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 17),
                                  child: Text(
                                    'Please sign Up to continue',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: primaryColor.withOpacity(0.6),
                                    ),
                                  )),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  color: Colors.white.withOpacity(0.5),
                                  child:
                                  Column(
                                    children: [

                                      SizedBox(
                                          height: 20
                                      ),

                                      CustomeTextFormField(
                                        textInputAction: TextInputAction.next,
                                        hintText: 'User Name',
                                        hintTextsty: TextStyle(
                                            color: Colors.black
                                        ),
                                        controller: _LocationcodeController,
                                        keyboardType: TextInputType.number,
                                        validator: (String? val) {
                                          if (val == null || val.isEmpty) {
                                            return '';
                                          }
                                          return null;
                                        },
                                      ),

                                      SizedBox(
                                          height: 20
                                      ),

                                      CustomeTextFormField(
                                        textInputAction: TextInputAction.next,
                                        hintText: ' New Password',
                                        controller: _customercodeController,
                                        hintTextsty: TextStyle(
                                            color: Colors.black
                                        ),
                                        validator: (String? val) {
                                          if (val == null || val.isEmpty) {
                                            return '';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(
                                          height: 20
                                      ),
                                      CustomeTextFormField(
                                        textInputAction: TextInputAction.next,
                                        hintText: 'Again New Password',
                                        controller: _customercodeController,
                                        hintTextsty: TextStyle(
                                            color: Colors.black
                                        ),
                                        validator: (String? val) {
                                          if (val == null || val.isEmpty) {
                                            return '';
                                          }
                                          return null;
                                        },
                                      ),


                                      const SizedBox(
                                        height: 20.0,
                                      ),

                                      Container(
                                        width: sizeWidth(context),
                                        margin: EdgeInsets.symmetric(
                                            horizontal: sizeWidth(context) * 0.06),
                                        height: 45,
                                        decoration: const BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(30.0)),
                                        ),
                                        child: ElevatedButton(
                                          child:  Text(
                                            'SIGN IN',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            if (formKey.currentState!.validate()) {




                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: primaryColor,
                                            textStyle: const TextStyle(
                                              fontSize: 14,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                          ),
                                        ),
                                      ),

                                      Container(
                                        alignment: Alignment.topRight,
                                        child: TextButton(
                                          onPressed: () {

                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext context) =>
                                                        LoginScreen()));
                                          },
                                          child: const Text(
                                            'Sign In Here',
                                            style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                fontSize: 17,
                                                color: primaryColor),
                                          ),
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


                    ),

                  ],
                ),
              ),
            ),
          ),
        ),

      ),

    );


  }


}

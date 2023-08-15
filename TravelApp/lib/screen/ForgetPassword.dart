



import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widget/CustomeTextFormField.dart';
import '../widget/colors_schemes.dart';
import '../widget/constants.dart';
import 'LoginScreen.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  // ForgetPasswordController _getforgetpassword = ForgetPasswordController();
  final _customercodeController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(

      ),

      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(
                        height: sizeheight(context) * 0.1,
                      ),
                      Container(
                        width: 1100.00,
                        height:200.00,
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
                            'Forget Password',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold,
                                color: Colors.black

                            ),
                          )),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 17),
                          child: Text(
                            'Enter customer code to continue',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6),
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
                          child: Column(

                            children: [


                              SizedBox(height: 20),
                              CustomeTextFormField(
                                hintText: 'Location code',
                                hintTextsty: TextStyle(
                                  decorationColor: Colors.black,
                                  color: Colors.black,


                                ),
                                controller: _customercodeController,

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
                              // CustomeTextFormField(
                              //   obscureText: true,
                              //   hintText: 'Password',
                              //   validator: (String? val) {
                              //     if (val == null || val.isEmpty) {
                              //       return '';
                              //     }
                              //     return null;
                              //   },
                              // ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                width: sizeWidth(context),
                                margin: EdgeInsets.symmetric(
                                    horizontal: sizeWidth(context) * 0.06),
                                height: 45,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                ),
                                child: ElevatedButton(
                                  child: const Text(
                                    'SUBMIT NOW',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {

                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  LoginScreen()));
                                      // _getforgetpassword.forgetpassMethod(
                                      //     context: context,
                                      //     popCode: _customercodeController.text,
                                      //
                                      //     setProgressBar: () {
                                      //       AppDialogs.progressAlertDialog(
                                      //           context: context);
                                      //     });
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

                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 10.0),
                                alignment: Alignment.center,
                                child: RichText(
                                  text: TextSpan(
                                    text: "Already have an account? ",
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ('Sign In'),
                                        style: const TextStyle(
                                            decoration: TextDecoration.underline,
                                            color: primaryColor,
                                            fontSize: 16),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext context) =>
                                                        LoginScreen()));
                                          },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),


                            ],
                          ),

                        ),
                      ),
                      SizedBox(
                          height: 20
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

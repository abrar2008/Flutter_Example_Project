import 'package:flutter/material.dart';
import 'package:internship/routes.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<signup> {

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Sign up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),


      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 30,
                  ),
                ),
              ),

              Row(
                children: [
                  SizedBox(width: 40),
                  Text("NAME",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight : FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  SizedBox(width: 40),
                  Text("EMAIL",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    fontWeight : FontWeight.bold,
                    ),

                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  SizedBox(width: 40),
                  Text("PASSWORD",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight : FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(15)
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off
                          ),
                          onPressed: () {
                            setState(() {});
                          })
                  ),
                ),

              ),

              SizedBox(
                height: 20,
              ),

              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xFF1152fd), borderRadius: BorderRadius.circular(15)),
                child: FlatButton(
                  onPressed: () {Navigator.pushNamed(context, MyRoute.verifyRoute); },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,fontWeight:
                    FontWeight.bold,
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 70,
              ),





              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( 
                    "Already have an account? ",
                  style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                width: 5.0,
              ),
             InkWell(
                onTap: (){ Navigator.pushNamed(context, MyRoute.signinRoute);},
                child: Text("Sign in",
                style: TextStyle(
                          color: Color(0xFF1152fd),
                          decoration: TextDecoration.underline,
                        )
                ),
                ),
                ],
              ),
               ],
          ),
        ),
      ),
    );
  }
}
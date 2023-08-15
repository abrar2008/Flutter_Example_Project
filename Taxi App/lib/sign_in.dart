import 'package:flutter/material.dart';
import 'package:internship/routes.dart';

class signin extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<signin> {

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Sign in",
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
                    height: 40,
                  ),
                ),
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
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(18)
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
                  cursorColor: Colors.black,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(18)
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
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xFF1152fd), borderRadius: BorderRadius.circular(15)),
                child: FlatButton(
                  onPressed: () {Navigator.pushNamed(context, MyRoute.bookingRoute);},
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                   child:Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 40,
                      )),
                ),

                  Text("OR SIGN IN WITH",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight:FontWeight.bold,
                    ),),

                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 40,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 15.0),

                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/facebook.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),

                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/twitter.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),

                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/google.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
             // ),


              SizedBox(
                height: 70,
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( 
                    "Don't have an account? ",
                  style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                width: 5.0,
              ),
             InkWell(
                onTap: (){ Navigator.pushNamed(context, MyRoute.signupRoute);},
                child: Text("Sign up",
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
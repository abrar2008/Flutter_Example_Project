import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HaveAccount extends StatefulWidget {
  const HaveAccount({ Key key }) : super(key: key);

  @override
  _HaveAccountState createState() => _HaveAccountState();
}


Widget buildEmail() {
  return Container(
      
    child: Column(
      
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10,),
         Container(
           alignment: Alignment.centerLeft,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(10),
             boxShadow: [
               BoxShadow(
                 color: Colors.black26,
                 blurRadius: 6,
                 offset: Offset(0,2)
               )
             ]
           ),
           height: 60,
           child: TextField(
             
             keyboardType: TextInputType.emailAddress,
               style: TextStyle(
                 color: Colors.black87
               ),
               decoration: InputDecoration(
                 border: InputBorder.none,
                 contentPadding: EdgeInsets.all(20),
                 
                 hintText: 'info@youremail.com',
                 hintStyle: TextStyle(
                   color: Colors.black38
                 )
               ),
           ),
         )
      ],
    ),
  );
}
Widget textscreen() {
  return  
  
   Container(
    padding: EdgeInsets.only(left: 100),
    width: double.infinity,
    
    child: 
    Center(


      child: 
      TextButton(
        
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: () {

              Get.toNamed('/Createaccount');
            },
            child: const Text('Dont Have account? Sign In '),
          ),
      
    )
      
      );
}

Widget buildLoginBtn(){
return Container(
  
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
       color: Colors.blue,
      //elevation: 5,
      onPressed: () => {
        Get.toNamed('/dashboard')
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(15)),
      
      
      child: Text(
        'Login Now ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
         ),
      )
      ),
      
      );
      } 
Widget buildPassword() {
  return Container(
      
    child: Column(
      
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 5,),
         Container(
           alignment: Alignment.centerLeft,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(10),
             boxShadow: [
               BoxShadow(
                 color: Colors.black26,
                 blurRadius: 6,
                 offset: Offset(0,2)
               )
             ]
           ),
           height: 60,
           child: TextField(
              obscureText: true,
             keyboardType: TextInputType.emailAddress,
               style: TextStyle(
                 color: Colors.black87
               ),
               decoration: InputDecoration(
                 border: InputBorder.none,
                 contentPadding: EdgeInsets.all(20),
                 
                 hintText: '***********',
                 hintStyle: TextStyle(
                   color: Colors.black38
                 )
               ),
           ),
         )
      ],
    ),
  );
}
Widget buildForgotPassbtn(){
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () => print("Forgot Password Pressed"), 
      padding: EdgeInsets.only(right: 5),
      child: Text(
        'Forgot Password',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      )
      )
  );
}
class _HaveAccountState extends State<HaveAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
    SingleChildScrollView(
          child: Container(
         width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,   
         color: Colors.tealAccent[100],
         child:
         Center(
           child: Column(
             children: [
               SizedBox(height: 140,),
                Image.asset('assets/login icon.png' ,),
                SizedBox(height: 20,),
                Text("Welcome !" ,
                style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,
                 
                ),
                ),
                SizedBox(height: 10,),
                Text("Please Sign in to Countinue" ,
                style: TextStyle(
                 fontSize: 20,
                 
                 
                ),
                ),

               Container(
                  padding: EdgeInsets.fromLTRB(19,9,14,19),
                 child: 
               Column(
                 children: [
                   buildEmail(),
                   buildPassword(),
                   buildForgotPassbtn(),
                   buildLoginBtn(),
                   textscreen(),
                 ],
               )),
               

             ],

 
         ) ,
      ),
        
      ),
    )
    );
  
  }
}
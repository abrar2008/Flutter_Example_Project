import 'package:assinment/Screen/CreateAccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:assinment/GetxHelper/FirebaseController.dart';


//import '../Controller/google_sign_in.dart';  



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
//Controller controller = Get.put(Controller());

bool isRemeberMe = false;
final  homeController = Get.put(FirebaseController());
class _LoginPageState extends State<LoginPage> {

  
  


 

Widget buildCreateAccount(){
return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: RaisedButton(
      
      elevation: 5,
      onPressed: () => {
       Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount()
                      ),
       )             
      },
       
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
       
      color: Colors.blue,
      child: Row( 
        crossAxisAlignment: CrossAxisAlignment.end,
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.end,// Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Text("Create Account " ,
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                       

                     ),
                    ),
                    SizedBox(width: 40,),

                    Icon(Icons.arrow_forward ,
                    color: Colors.white,
                    ),
                    
                  ],
                ),
      ),
      
      );
      } 


Widget buildConnectFacebook(){
return Container(
    padding: EdgeInsets.symmetric(vertical: 17),
    width: double.infinity,
    child: RaisedButton(
    
      elevation: 5,
      onPressed: () => {
        Get.defaultDialog( title: "Connect Facebook "),
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(10)),
      color: Colors.indigo[500],
      child: Row(
        children: [
          SizedBox(width: 20,),
           Image(
  image: NetworkImage('https://image.flaticon.com/icons/png/512/725/725350.png'),
      width: 20,
      color: Colors.white,
    
),
SizedBox(width: 20,),
          Text(
            'Connect Facebook ',
            style: TextStyle(
              color: Colors.white,
              
              fontSize: 18,
              fontWeight: FontWeight.bold,
              
             ),
          ),
        ],
      )
      ),
      
      );
      } 
Widget buildConnectGoogle(){
return Container(
  
    //padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: GestureDetector(
          child: RaisedButton(
        elevation: 5,
        onPressed: ()  {

         // controller.google_signIn();

         homeController.google_signIn();
        } ,
           
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
        color: Colors.redAccent,
        child: 
        Row(
          children: [
           SizedBox(width: 16,),
            Image(
  image: NetworkImage('https://icons-for-free.com/iconfiles/png/512/g+g+icon+google+logo+search+social+icon-1320194476187797620.png'),
      width: 20,
      color: Colors.white,
    
),
SizedBox(width: 13,),
            Text(
              'Connect Google  ',
              style: TextStyle(
                color: Colors.white,
                
                fontSize: 18,
                fontWeight: FontWeight.bold,
                
               ),
            ),
          ],
        )
        ),
    ),
      
      );
      } 



Widget buildHaveAccount(){
return Container(
    padding: EdgeInsets.symmetric(vertical: 15),
    width: double.infinity,
    child: RaisedButton(
      
      elevation: 5,
      onPressed: () => {
         //  Get.toNamed("/Dashboard" , )
          Get.toNamed("/haveaccount"),      
           
      },
      padding: EdgeInsets.all(15),
      
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(10)),
      //color: Colors.transparent,
      color: Colors.transparent,

      child: Row( 
        crossAxisAlignment: CrossAxisAlignment.end,
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.end,// Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Text("I have an account " ,
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                       

                     ),
                    ),
                    SizedBox(width: 30,),

                    Icon(Icons.arrow_forward ,
                    color: Colors.white,
                    ),
                    
                  ],
                ),
       
      ),
      
      );
      } 


Widget textscreen() {
  return  
  
   Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: 
    Center(

      child: Text('All Jobs Terms  and Conditions and Privacy Policy' , 
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
       fontWeight: FontWeight.bold,
      )
       
      
      ),
    )
      
      );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value:SystemUiOverlayStyle.light ,
        child: GestureDetector(
          child: 
          Stack(
            children: [
              
              Container(
                padding: new EdgeInsets.all(35.0),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                   image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.fill,
          ),
                  
                ),
                child: 
                Column(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [
                      SizedBox( height: 140,),
                     Image.asset('assets/logo.png' ,
),
                      SizedBox( height: 140,),
                      
                      
                      
                      buildCreateAccount(),
                      buildHaveAccount(),
                      buildConnectFacebook(),
                      buildConnectGoogle(),
                      textscreen(),
                    
                    
                    ],
                  ),
                ),
              

            ],

          ),
        ),
        ),
        
        );
  }
}




/*              
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
            Expanded(
              child: SizedBox(
                height: 60.0,
                child:InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      Icon(Icons.home),
                      Text("Home "),
                    ],

                  ),
                ) ,
              ),
              
            
            ),
               Expanded(
              child: SizedBox(
                height: 60.0,
                child:InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      Icon(Icons.home_repair_service_rounded),
                      Text("Jobs "),
                    ],

                  ),
                ) ,
              ),
              
            
            ),
               Expanded(
              child: SizedBox(
                height: 60.0,
                child:InkWell(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()
                      ),
                     );
                  },
                  child: Column(
                    children: [
                      Icon(Icons.color_lens),
                      Text("Company "),
                    ],

                  ),
                ) ,
              ),
              
            
            ),
               Expanded(
              child: SizedBox(
                height: 60.0,
                child:InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      Icon(Icons.home_repair_service_rounded),
                      Text("Save Jobs "),
                    ],

                  ),
                ) ,
              ),
              
            
            ),
               Expanded(
              child: SizedBox(
                height: 60.0,
                child:InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      Icon(Icons.home),
                      Text("Write "),
                    ],

                  ),
                ) ,
              ),
              
            
            ),
            ],
          ),
        ),
*/




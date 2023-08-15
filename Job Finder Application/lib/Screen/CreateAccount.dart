import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccount extends StatelessWidget {


Widget textscreen() {
  return  
  
   Container(
    padding: EdgeInsets.only(left: 50),
    width: double.infinity,
    
    child: 
    Center(


      child: 
      TextButton(
        
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15),
              
              
            ),
            onPressed: () {

              Get.toNamed('/haveaccount');
            },
            child: const Text('I have  Already an Account ? Login Now '),
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
        Get.toNamed('/haveaccount')
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(0)),
      
      
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.tealAccent[100],
        
      ),

      body:
      
      Container(
        padding: EdgeInsets.fromLTRB(14,9,14,9),

        
        width: MediaQuery.of(context).size.width,
        color: Colors.tealAccent[100],

        child: Column(
          
          children: [
            SizedBox(height: 100,),
            
            Text("Join the  Revolution " ,
            style: TextStyle(
           color: Colors.black,
           fontSize: 25,
            
            ),
            ),
            
        Text(" Please Create an Account  " ,
            style: TextStyle(
           color: Colors.black,
            ),
            ),
           SizedBox(height: 50,),
            
            TextField(
              
              
           keyboardType: TextInputType.emailAddress,
             style: TextStyle(
               color: Colors.black87,
               
             ),
             decoration: InputDecoration(
                fillColor: Colors. white, filled: true,
               border: InputBorder.none,
               contentPadding: EdgeInsets.all(10),
              
               hintText: 'John smith ',
               hintStyle: TextStyle(
                 color: Colors.black38
               )
             ),
            
            ),
            SizedBox(height: 20,),
             TextField(
              
              
           keyboardType: TextInputType.emailAddress,
             style: TextStyle(
               color: Colors.black87,
               
             ),
             decoration: InputDecoration(
                fillColor: Colors. white, filled: true,
               border: InputBorder.none,
               contentPadding: EdgeInsets.all(10),
               
               hintText: 'Info@youremail.com',
               hintStyle: TextStyle(
                 color: Colors.black38
               )
             ),
            
            ),
            SizedBox(height: 20,),
             TextField(
              
              
           keyboardType: TextInputType.visiblePassword,
             style: TextStyle(
               color: Colors.black87,
               
             ),
             decoration: InputDecoration(
                fillColor: Colors. white, filled: true,
               border: InputBorder.none,
               contentPadding: EdgeInsets.all(10),
               hintText: 'UserName ',
               hintStyle: TextStyle(
                 color: Colors.black38
               )
             ),
            
            ),
        SizedBox(height: 20,),
             TextField(
              
              
           keyboardType: TextInputType.emailAddress,
             style: TextStyle(
               color: Colors.black87,
               
             ),
             decoration: InputDecoration(
                fillColor: Colors. white, filled: true,
               border: InputBorder.none,
               contentPadding: EdgeInsets.all(10),
               hintText: 'John smith ',
               hintStyle: TextStyle(
                 color: Colors.black38
               )
             ),
            
            ),
            SizedBox(height: 20,),
           buildLoginBtn(), 
            textscreen(),   
          ],
        ),
      ) ,

    );
  }
}
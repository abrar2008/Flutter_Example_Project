import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/getwidget.dart';
class Myprofile extends StatefulWidget {
  const Myprofile({ Key? key }) : super(key: key);

  @override
  _MyprofileState createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color:  Color(0xffd8b476),
                    icon: Icon(Icons.arrow_back),
                   
                    onPressed: () {
                      
                    },
                  ),
                  
       iconTheme: IconThemeData(
          color: Colors.black
        
        ),
        elevation: 2,
        backgroundColor: Colors.brown[50],
         
        title: Text("My Profile" ,
        style: TextStyle(
         fontWeight: FontWeight.bold,
          color: Colors.black,
        
          
        ),
        ),
        actions: [
           Container(
                   
                  
                    decoration: BoxDecoration(
             color: Colors.brown[50],
             
            borderRadius: BorderRadius.circular(7),
            
                    ),

                    
                    child: 
                      InkWell(
                  onTap: (){
                 

                  },
                    child:Image(image: AssetImage('assets/images/menu.png'),
                      width: 60,
                      ),
                      )
                    ),
            InkWell(
                  onTap: (){
                   
                  },
                    child: SvgPicture.asset("assets/Icons/Notification.svg" ,
                      color: Colors.black,
                      ),
                      ),
                 //
        ],
      ),
      body: 
      SingleChildScrollView(
        child: Container(
            
            //  width:   MediaQuery.of(context).size.width,
          child:Column(
            children: [
              Container(
                
              color: Colors.brown[50],
                height: MediaQuery.of(context).size.width *0.54,
              width:   MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                   
  SizedBox(
      height: 100,
      width: 80,
      child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/person.png"  ,
              
              
              ), 
            ),
            Positioned(
                bottom: 2,
                right: -30,
                
                //top: -15,
                child: Container(
                  height:25,
                  child: RawMaterialButton(
                    
                    onPressed: () {},
                   // elevation: 2.0,
                    fillColor: Color(0xffd8b476),
                    child: Icon(Icons.camera_alt_outlined, color: Colors.white,
                    size: 15,),
                    //padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                )),
          ],
      ),
    ),
                  



                
               Text("John Smith",
               
               style: TextStyle(
                 fontSize: 17,
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
               ),
               ),
               Text("Buyer/ Seller",
               style: TextStyle(
                 fontSize: 13,
                 fontWeight: FontWeight.w600,
               ),
               ),
               
                  ],
                ) ,
              ),
            Container(
      
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Information",
               textAlign: TextAlign.start,
               style: TextStyle(
                 
                 fontSize: 17,
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
               ),
               ),
               Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
       Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Your Name ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        
                   Container(
                    width:   MediaQuery.of(context).size.width *0.45,
                     child: TextFormField(
                     
        decoration: const InputDecoration(
           hintText: 'Agentf',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
                   ),
         Container(
                    width:   MediaQuery.of(context).size.width *0.45,
                     child: TextFormField(
                     
        decoration: const InputDecoration(
           hintText: 'AgentL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
                   ),
          
          
          //
          ],
        ),
       
      
      
      ],
                 ),
               ),
      SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Username ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),SizedBox(height: 10,),
                   TextFormField(
                   
        decoration: const InputDecoration(
           hintText: 'agent123',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
      SizedBox(height: 10,),
                 Container(
                 
                 child: Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text("Email ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),SizedBox(height: 10,),
                   TextFormField(
                   
        decoration: const InputDecoration(
           hintText: 'agent123@vistech.com',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
      
                 Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Select Your Public Name ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),SizedBox(height: 10,),
                   TextFormField(
                   
        decoration: const InputDecoration(
            hintText: 'agent123',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
      
                 Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("About Me ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),
                   SizedBox(height: 10,),
                   TextFormField(
                    textInputAction: TextInputAction.newline,
  keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
               SizedBox(height: 10,),
                  
               
             
                
      GFButton(

             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: const BorderSide(color: Color(0xffd8b476), width: 2), borderRadius: new BorderRadius.circular(10.0)), RoundedRectangleBorder(side: const BorderSide(color: Color(0xffd8b476), width: 2), borderRadius: new BorderRadius.circular(10.0)), 0.5),

        size: 50,
        textStyle: TextStyle(fontWeight: FontWeight.bold , color:Colors.black ),
        color:  Color(0xffd8b476),
    onPressed: (){},
    text: "UPDATE PROFILE ",
    fullWidthButton: true,
 ),
      
      
      
      
      
      
      
                ],
              ),
            ),
             Container(
      
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Social Media",
               textAlign: TextAlign.start,
               style: TextStyle(
                 
                 fontSize: 17,
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
               ),
               ),
               Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
       Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Facebook ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),
        SizedBox(height: 10,),
        TextFormField(
                     
        decoration: const InputDecoration(
          hintText: 'Enter the Facebook URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      
      //
      
      ],
                 ),
               ),
      SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Twitter ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),SizedBox(height: 10,),
                   TextFormField(
                   
        decoration: const InputDecoration(
           hintText: 'Enter the Twitter URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
      SizedBox(height: 10,),
                 Container(
                 
                 child: Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text("Linkedin ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),SizedBox(height: 10,),
                   TextFormField(
                   
        decoration: const InputDecoration(
          hintText: 'Enter the Linkedin URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
      
                 Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Instagram ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),SizedBox(height: 10,),
                   TextFormField(
                   
        decoration: const InputDecoration(
          hintText: 'Enter the Instagram URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
      
                 Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Google Plus ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),
                   SizedBox(height: 10,),
                   TextFormField(
                    textInputAction: TextInputAction.newline,
  keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
             hintText: 'Enter the Facebook URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
               SizedBox(height: 10,),
                  
                Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Youtube ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),
                   SizedBox(height: 10,),
                   TextFormField(
                    textInputAction: TextInputAction.newline,
  keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
             hintText: 'Enter the Youtube URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
              Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Pinterest ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),
                   SizedBox(height: 10,),
                   TextFormField(
                    textInputAction: TextInputAction.newline,
  keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
             hintText: 'Enter the Pinterest URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),


 Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Vimeo ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),
                   SizedBox(height: 10,),
                   TextFormField(
                    textInputAction: TextInputAction.newline,
  keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
             hintText: 'Enter the Pinterest URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
                Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Skype ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),
                   SizedBox(height: 10,),
                   TextFormField(
                    textInputAction: TextInputAction.newline,
  keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
             hintText: 'Enter the Skype URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
                Container(
                 
                 child: Column(
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("Website ",
                 textAlign: TextAlign.start,
                 style: TextStyle(
                   
                   fontSize: 14,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
        ),
                   SizedBox(height: 10,),
                   TextFormField(
                    textInputAction: TextInputAction.newline,
  keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
             hintText: 'Enter the Website URL',
        border: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      )),
      ],
                 ),
               ),
SizedBox(height: 10,),

      GFButton(
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: const BorderSide(color: Color(0xffd8b476), width: 2), borderRadius: new BorderRadius.circular(10.0)), RoundedRectangleBorder(side: const BorderSide(color: Color(0xffd8b476), width: 2), borderRadius: new BorderRadius.circular(10.0)), 0.5),

        size: 50,
        textStyle: TextStyle(fontWeight: FontWeight.bold , color:Colors.black ),
        color:  Color(0xffd8b476),
    onPressed: (){},
    text: "UPDATE PROFILE ",
    fullWidthButton: true,
 ),
      
      
      
      
      
      
      
                ],
              ),
            )
            //
            
            ],
          ) ,
        ),
      ),
    );
  }
}
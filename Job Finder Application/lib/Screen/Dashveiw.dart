
import 'package:flutter/material.dart';
class Dashveiw extends StatefulWidget {
 

  @override
  _DashveiwState createState() => _DashveiwState();
}

class _DashveiwState extends State<Dashveiw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
       title: Text('Home'),
       leading:Icon(Icons.clear_all,
                    color: Colors.white,
                    ), 
                    actions: [
                      Icon(Icons.notifications_active_outlined ,
                    color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.message_sharp ,
                    color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.perm_identity_rounded ,
                    color: Colors.white,
                    
                    ),
                       SizedBox(width: 10,),
                    ],
      ),
    
     body:  SingleChildScrollView(
         
                child:
            Column(
              children: [
                
                
                Container(
                  height: 490,
                      
                  child: Stack(
                    children: [
                       Container(
                     
                     height: 300,
                     
                     
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBJr8KaaUllw9OZDMFumga3xeJY9weg19hL3_4hIraBwQFOvDP0IeAHBGpfGuvi95YDRh2aZztabQ6ZQ&usqp=CAU ' ),
            fit: BoxFit.cover,
            
          ),
          color: Colors.black,
                  ),
                    
                    child: Column(
                      children: [
                        SizedBox( height: 40,),
                       Image.asset('assets/logo.png',
                       width: 120.0,
                       ),
                        
                        SizedBox( height: 20,),
                       
                        Text('Find The Job That  Fits & Life  ' ,
                         style:TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        ) ,
                        
                        ),
                         
                      ],
                    )
                   ),
                     Positioned(
                       top: 190,
                     
                       left: 40,
                       right:20,
                        child: Container(
                          decoration: BoxDecoration(
          
            // set border width
          borderRadius: BorderRadius.all(
              Radius.circular(15.0)
              
              ), 
              // set rounded corner radius
      ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(14,9,14,9),
                            alignment: Alignment.center,
                          
                           
                          // height: 200,
                          width: 50,
                          decoration: BoxDecoration(
         color: Colors.white,
            // set border width
          borderRadius: BorderRadius.all(
              Radius.circular(15.0)
              
              ), 
              // set rounded corner radius
      ),
                          child: 
                           Column(
                              children: [
                              SizedBox(height: 20,),
                               Container(
      margin: EdgeInsets.all(7),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Colors.blue,// set border color
              width: 1.5),   // set border width
          borderRadius: BorderRadius.all(
              Radius.circular(15.0)
              
              ), 
              // set rounded corner radius
      ),
      child:
       Column(
         children: [
           TextField(
              decoration: InputDecoration(
                hintText: 'Job  Title, Keywords or Company ',
                border: InputBorder.none,
                
              ),
              style: TextStyle(
                fontSize: 12,
              ),
      ),
         ],
       ),
    ),
                                     Container(
      margin: EdgeInsets.all(9),
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Colors.blue,// set border color
              width: 2.0),   // set border width
          borderRadius: BorderRadius.all(
              Radius.circular(9.0)), // set rounded corner radius
      ),
      child: TextField(
          decoration: InputDecoration(
            hintText: 'City , Province, OR Region ',
            border: InputBorder.none,
          ),
          style: TextStyle(
            fontSize: 13,
          ),
      ),
    ),

    Container(
    
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(9.0),
      decoration: BoxDecoration(
          color: Colors.blue,
          
          border: Border.all(
              color: Colors.blue,// set border color
              width: 3.0),   // set border width
          borderRadius: BorderRadius.all(
              Radius.circular(9.0)), // set rounded corner radius
      ),
    child: FlatButton(
      onPressed: () => {

        //dashcontroller.updatename(),
      }, 
      color: Colors.blue,
      
      child: Text(
          'Find Jobs',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
      )
      )
    )          
                                 
                              ],
                            ),
                          ),
                        )
                   ),
                     
                    

                    ],
                  ),
                ),




Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
          Container(
    padding: EdgeInsets.only(right: 130,bottom: 30),
      child: Text('Explore JOBS Near You ' ,
      
      style: TextStyle(
     
          fontSize: 20,
          fontWeight: FontWeight.bold,
     
      ),
      
      
      
      ),
  ),
        
        Row(
          
          children: [
           
           

            
   Row( 
  
  children: [
    
    Card(
          child:
           Row(
             
             children: [
                
             

               Column(

                 children: [
                   
             
               
                 
    
    
    
    
    //SizedBox(height: 20,),
      ],
               ),
              
             
             
            
             
             
  
                   

       
          ],
           
  
    ),
     ),
  
  
  //  demo//
  ],
)
          

      
          
          ],
        ),

 Card(
          child:
           Row(
             
             children: [
                SizedBox(height: 100,),
               MaterialButton(
  onPressed: () {},
  color: Colors.blue,
  textColor: Colors.white,
  child: Icon(
    Icons.fact_check_rounded,
    size: 40,
  ),
  padding: EdgeInsets.all(16),
  shape: CircleBorder(),
),

               Column(

                 children: [
                   
                   Text("Company Name",
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 20,
        
      ),
      ),
               
                 
    
     Text("Senior PHP Delevoper ",
     textAlign: TextAlign.start, 
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(
      height: 10,
    ),
     Text("Bayonne  NJ ",
     textAlign: TextAlign.start,  
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 20,
    width: 50,),
      ],
               ),
              
             
             
            Container(
              alignment: Alignment.bottomRight,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     SizedBox(width: 100,),
                     Icon(Icons.favorite,
              
                       size: 25,
                       ),
                       SizedBox(height: 50,),
                       Text('2hr' ,),
                       
                   ],
                 ),
                 
            ),
             
             
  
                   
SizedBox(height: 100,),
       
          ],
           
  
    ),
     ),
 
   Card(
          child:
           Row(
             
             children: [
                SizedBox(height: 100,),
               MaterialButton(
  onPressed: () {},
  color: Colors.blue,
  textColor: Colors.white,
  child: Icon(
    Icons.fact_check_rounded,
    size: 40,
  ),
  padding: EdgeInsets.all(16),
  shape: CircleBorder(),
),

               Column(

                 children: [
                   
                   Text("Company Name",
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 20,
        
      ),
      ),
               
                 
    
     Text("Senior PHP Delevoper ",
     textAlign: TextAlign.start, 
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(
      height: 10,
    ),
     Text("Bayonne  NJ ",
     textAlign: TextAlign.start,  
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 20,),
      ],
               ),
              
             
             
            Container(
              alignment: Alignment.bottomRight,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                      SizedBox(width: 100,),
                     Icon(Icons.favorite,
              
                       size: 25,
                       ),
                       SizedBox(height: 50,),
                       Text('2hr' ,),
                       
                   ],
                 ),
            ),
             
             
  
                   

       
          ],
           
  
    ),
     ),

      Card(
          child:
           Row(
             
             children: [
                SizedBox(height: 100,),
               MaterialButton(
  onPressed: () {},
  color: Colors.blue,
  textColor: Colors.white,
  child: Icon(
    Icons.fact_check_rounded,
    size: 40,
  ),
  padding: EdgeInsets.all(16),
  shape: CircleBorder(),
),

               Column(

                 children: [
                   
                   Text("Company Name",
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 20,
        
      ),
      ),
               
                 
    
     Text("Senior PHP Delevoper ",
     textAlign: TextAlign.start, 
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(
      height: 10,
    ),
     Text("Bayonne  NJ ",
     textAlign: TextAlign.start,  
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 20,),
      ],
               ),
              
             
             
            Container(
              alignment: Alignment.bottomRight,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                      SizedBox(width: 100,),
                     Icon(Icons.favorite,
              
                       size: 25,
                       ),
                       SizedBox(height: 50,),
                       Text('2hr' ,),
                       
                   ],
                 ),
            ),
             
             
  
                   

       
          ],
           
  
    ),
     ),
         

  
      
            
  ],
)],



            ),
             

     )
    );
       

  }
}
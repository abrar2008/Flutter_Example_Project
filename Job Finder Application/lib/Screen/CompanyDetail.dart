import 'package:assinment/GetxHelper/CompanyDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CompanyDetail extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
      final Companycontroller =  Get.put(CompanyDetailController());
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        title: Text('Company Information '),
      ),
      body:
        SingleChildScrollView(
                  child: Container(
          width: MediaQuery.of(context).size.width,
           // height: MediaQuery.of(context).size.height,
            child: Column(
              
              children: [
                Container(
                 width:  MediaQuery.of(context).size.width ,
                 height: 200,
                 color: Colors.black, 
                 child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwirC_hO33YuMeVyKRaRlaumrHdkALbpkq5_WFKL1p3f8PWFK_cvrk6bPcaJE0PE_DOqo&usqp=CAU'),
                 
                ),
                Row(
                      
                  children: [
                   
                   Container(
                    
                                  child:  Padding(
                             padding: EdgeInsets.all(8),
                            child: CircleAvatar(
                              radius: 35.0,
  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3B3g1ZYUcGKdtulighGvGNR7zVaZCLtDIkpvdxOf2K1Vf6mYxomKa1DZVQ9hh5upDK3Hq6XJERquYwg&usqp=CAU'),

),
                                  )                
                   ),
                   Text('Company Name ' ,
                   style: TextStyle(
                     fontSize: 30,  
                   ),

                    
                   ),
                   Divider(),],),

                  Container(
                     padding:EdgeInsets.all(10) ,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Icon(Icons.ev_station_rounded),
                          Text('OverVeiw' ,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                         
                        ],
                      ),

                       SizedBox(height: 100,),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text('  2' ,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                         
                          Text('  Reveiws' ,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                         
                        ],
                      ),
                       Column(
                        children: [
                          SizedBox(height: 20,),
                          Text('  1' ,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                         
                          Text('  Jobs' ,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                         
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 20,),
                          Text('  1' ,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                         
                          Text('  Salaries' ,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                          
                        ],
                      ),
                     
                     ],
            ),
            
                  ),
SizedBox(height: 30,),
               Container(
               padding:EdgeInsets.all(10) ,
              width: MediaQuery.of(context).size.width,
                          child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   
                             ElevatedButton(
                             child: Text(
                                "FOLLOW".toUpperCase(),
                           style: TextStyle(fontSize: 14)
                                                           ),
                           style: ButtonStyle(
                             foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                           
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.blue),
                ),
                
              )
            ),
            
            onPressed: () => null
    ),
                             
                             ElevatedButton(
                             child: Text(
                                "+ ADD REVEIW".toUpperCase(),
                           style: TextStyle(fontSize: 14)
                                                           ),
                           style: ButtonStyle(
                             foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                           backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.blue),
                ),
                
              )
            ),
            
            onPressed: () => null
    ),
    
                   ],
                 ),
               ),
               
    Container(
       padding:EdgeInsets.all(10) ,
                 width: MediaQuery.of(context).size.width,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                SizedBox(height: 10),

                      Text('Company Info '  ,
                       textAlign: TextAlign.start,
                         style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.bold, 
                         ),
                         ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                       children: [
                         
                
                          
                         Text('Website '  ,
                         style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.bold, 
                         ),
                         ),
                       Positioned(
                         right: 30,
                                          child: Text(' WWW.yourdomain.com ' ,
                         style: TextStyle(
                           
                            fontSize: 14,
                         ),
                         ),
                       ),
                       SizedBox(height: 50,),
                       ],
                       

                     ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                       children: [
                         
                
                          
                         Text('City  '  ,
                         style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.bold, 
                         ),
                         ),
                       Positioned(
                        
                                          child: Text(' East Hanover , Nu ' ,
                         style: TextStyle(
                           
                            fontSize: 14,
                         ),
                         ),
                       ),
                       SizedBox(height: 50,),
                       ],
                       

                     ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                       children: [
                         
                
                          
                         Text('Type : '  ,
                         style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.bold, 
                         ),
                         ),
                       Positioned(
                         right: 30,
                                          child: Text(' Company - Private   ' ,
                         style: TextStyle(
                           
                            fontSize: 14,
                         ),
                         ),
                         
                       ),
                       SizedBox(height: 50,),
                       ],
                       

                     ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                       children: [
                         
                
                          
                         Text('Industry '  ,
                         style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.bold, 
                         ),
                         ),
                       Positioned(
                         right: 50,
                                          child: Text(' Retail' ,
                         style: TextStyle(
                           
                            fontSize: 14,
                         ),
                         ),
                       ),
                       SizedBox(height: 50,),],),
                       
                     
                       
                   ],
                 ),

               ),
              
              

              

               ]
   

            ),
          ),
        ),
      
      
      

    );
  }
}
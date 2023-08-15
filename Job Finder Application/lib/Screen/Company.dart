import 'package:assinment/GetxHelper/CompanyController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CompanyVeiw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final Companycontroller =  Get.put(CompanyController());
    
    return 
    
      Scaffold(
        appBar: AppBar(
          leading: Text(''),
          title: Text('ComPany Detail'),

        ),

              body: GridView.builder(
        itemCount: 8,
        itemBuilder: (context,index){
          return Expanded(
          child: Container(
            //height: 500,
            padding: const EdgeInsets.all(5),
            child:   Column(
                   
                     children: [
                       Stack(
                         
                        children: [
                          Container( 
                           height: 50,
                           alignment: Alignment.center,
                           width: 300,
                           color: Colors.black,
                           
                          ),
                          Padding(
                             padding: EdgeInsets.only(top: 20,left: 50),
                            child: CircleAvatar(
                              radius: 35.0,
  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3B3g1ZYUcGKdtulighGvGNR7zVaZCLtDIkpvdxOf2K1Vf6mYxomKa1DZVQ9hh5upDK3Hq6XJERquYwg&usqp=CAU'),

),
                                   )      
                                ],
                              ),
                           

                           
             
                      
                      
                         
                       
                     SizedBox(height: 15,),
                        Text('3.5*' ,
                  style: TextStyle(
                    fontSize: 20,
                     color: Colors.orange,
                     
                  ),
                  
                  ),
                  SizedBox(height: 10,),
                   Text('Company Name ' ,
                  style: TextStyle(
                    fontSize: 20,
                     color: Colors.black,
                     
                  ),
                  
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('10k',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      ),

                     // SizedBox(height: 50,),

                       Text('12k',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      ),
                      Text('15k',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      ),
                      SizedBox(height: 10,),
                     
                
                    ],
                  ),
                   SizedBox(height: 20,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jobs',
                      style: TextStyle(
                        fontSize: 10,
                       
                        color: Colors.black,
                      ),
                      ),

                     // SizedBox(height: 50,),

                       Text('Reveiw',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                      ),
                      Text('Salaries',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                      ),
                      SizedBox(height: 10,),
                     
                
                    ],
                  ),
                   SizedBox(height: 30,),
                  OutlineButton(
                  
                        onPressed: () {},
                        child: Text("Follow",
                        
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                        ),
                        borderSide: BorderSide(color: Colors.blue),
                        shape: StadiumBorder(),
                      )
                 
                     ],
                   ),
              
        
            

          
          
                 
               
        
        color: Colors.white,
        
    ),
);
    
    
        },
  primary: false,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisSpacing: 8,
  mainAxisSpacing: 15,
  crossAxisCount: 2,
  childAspectRatio:  
           MediaQuery.of(context).size.width/MediaQuery.of(context).size.height,
          
  )

  
  
  
),
  );

  }
}



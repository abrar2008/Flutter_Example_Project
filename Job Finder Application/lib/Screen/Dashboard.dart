import 'package:assinment/GetxHelper/DashboardController.dart';
import 'package:assinment/Screen/Company.dart';
import 'package:assinment/Screen/CompanyDetail.dart';
import 'package:assinment/Screen/Save.dart';
import 'package:assinment/Screen/Dashveiw.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Dashboard extends StatefulWidget {
@override
  _DashboardState  createState() => _DashboardState();   
  }
  class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin {
   TabController _tabController;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new  TabController(length: 5 , vsync: this);
  }
 
 @override
  void dispose() {
    
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final dashcontroller =  Get.put(DashboardController());
    return 
    Scaffold(
      
      body:  TabBarView(
        controller: _tabController,
        children: [
          Dashveiw(),
          CompanyVeiw(),
          
          CompanyDetail(),
          SaveJob(),
          CompanyVeiw(),
        ],
      ),
      
          
      bottomNavigationBar: TabBar(
        controller: _tabController,
        unselectedLabelColor: Colors.black,
        indicator: UnderlineTabIndicator(borderSide: BorderSide(width:0.0)),
        labelColor: Colors.blue,
        tabs: [
          Tab(icon:Icon(Icons.home) , text: 'Home',),
          Tab(icon:Icon(Icons.home_repair_service_rounded) , text: 'Jobs',),

          Tab(
             icon:Icon(Icons.business_outlined) ,
             child: Text('Company Veiw',
             style: TextStyle(
               fontSize:5,
               fontWeight: FontWeight.bold,
             ),),
          
          ),

          Tab(icon:Icon(Icons.home_repair_service_rounded) , text: 'Save Jobs ',
           
           ),

          Tab(icon:Icon(Icons.home) , text: 'Write',),

        ],
      ),

    );         
       
  }
}






  /*
  width: MediaQuery.of(context).size.width,
           // height: MediaQuery.of(context).size.height,
           bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
            Expanded(
              child: SizedBox(
                height: 60.0,
                child:InkWell(
                  onTap: (){
                     Get.toNamed("/Dashboard"); 

                  },
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
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyVeiw()
                      ),
                     );
                  },
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
                     Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyDetail()
                      ),
                     );
                  },
                  child: Column(
                    children: [
                      Icon(Icons.color_lens),
                      Text("Company"),
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
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SaveJob()
                      ),
                     );
                  },
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








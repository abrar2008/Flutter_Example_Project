import 'package:flutter/material.dart';

import '../widget/cardwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'detailpage.dart';
class Homepage extends StatefulWidget {





  @override
  State<Homepage> createState() => _HomepageState();



}

class _HomepageState extends State<Homepage> {

  List<String> imgList =[
    "https://images.pexels.com/photos/307006/pexels-photo-307006.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "https://images.pexels.com/photos/4553618/pexels-photo-4553618.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "https://images.pexels.com/photos/3889753/pexels-photo-3889753.jpeg?auto=compress&cs=tinysrgb&w=1600",


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){}, icon: Icon(
            Icons.menu,
            color: Colors.black,
          )),
          title: Text("Travel App",
            style: TextStyle(
              color: Colors.black,
            ),

          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
          child: Column(
            children: [
              Text("Welcome Doctor Code" , style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w800,

              ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("Choose your next destination",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,

                ),
              ),

              SizedBox(
                height: 50,
              ),
              Text("Top Destination",
                style: TextStyle(
                  fontSize: 28.0,
                ),
              ),
              SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                    height: 300.0,
                    enableInfiniteScroll: false,
                    initialPage: 1

                ),
                items: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(imgList[0], "Moraine Lake", "Canda")));
                      },
                      child: cardShape(imgList[0], "Moraine Lake", "Canda")),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(imgList[0], "Moraine Lake", "Canda")));
                      },
                      child: cardShape(imgList[1], "Moraine Lake", "Canda")),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(imgList[0], "Moraine Lake", "Canda")));
                      },
                      child: cardShape(imgList[2], "Moraine Lake", "Canda")),
                ],


              )
            ],
          ),
        )
    );
  }
}
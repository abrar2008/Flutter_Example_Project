import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'menu.dart';

class Feed_back extends StatefulWidget {
  const Feed_back({Key? key}) : super(key: key);

  @override
  _Feed_backState createState() => _Feed_backState();
}

class _Feed_backState extends State<Feed_back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Card(
          shape: CircleBorder(),
          child: IconButton(
            icon: Icon(Icons.sort_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SlidingUpPanel(
        maxHeight: 65.h,
        minHeight: 65.h,

        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),

        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/arriving.PNG'), fit: BoxFit.fill),
            )),

        panel: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                    height: 5,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Color(0xFFD5DDE0),
                        borderRadius: BorderRadius.all(Radius.circular(2)))),
              ),
            ),
            Container(
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 15, right: 15),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.h),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Patrick",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Color(0xFF3E4958),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //),
                          SizedBox(
                            height: 10.0,
                          ),
                          Center(
                            child: RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.blue[400],
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                          Center(child: Text('Exelent')),
                          Padding(
                            padding: EdgeInsets.only(top: 1.h),
                            child: Center(
                              child: Container(
                                  color: Colors.white,
                                  height: 25.h,
                                  width: 90.w,
                                  child: Card(
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      maxLines: 10,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 15,
                                              bottom: 11,
                                              top: 11,
                                              right: 15),
                                          hintText: "Message"),
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: Center(
                              child: Container(
                                height: 8.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                    color: Color(0xFF1152fd),
                                    borderRadius: BorderRadius.circular(12)),
                                child: TextButton(
                                  onPressed: () {Navigator.pushNamed(context, MyRoute.receiptRoute);},
                                  child: Text(
                                    'Rate',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: -55,
                      left: 0,
                      height: 90,
                      width: 90,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/patrick.PNG'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
        // ),
      ),
      drawer: menu(),
    );
  }
}


import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  var url ;
  var title;
  var location;

   DetailPage(this.url , this.location,this.title);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

        Stack(
        children: [
          Hero(
            tag: 'box-${location}',
            child: Material(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url),
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 300.0),
                      Text(title, style: TextStyle(fontSize: 34.0,color: Colors.white, fontWeight: FontWeight.w800),),
                      Text(location, style: TextStyle(fontSize: 24.0,color: Colors.white, fontWeight: FontWeight.w800),)

                    ],
                  ),


                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30.0, left: 10.0),
          child: IconButton(
            onPressed: (){
              Navigator.pop(context);

            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 42.0,
            ),
          ),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

Widget buildImage(BuildContext context) {
  return Align(
    alignment: Alignment.topRight,
    child: Container(
      // height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Image(
        // height: 200,
        // width: 50,
        image: NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FPathh.png?alt=media&token=53399a84-2c37-4452-93c1-66d54ee62757'),
      ),
    ),
  );
}

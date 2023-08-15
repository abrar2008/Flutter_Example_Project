import 'package:flutter/material.dart';

class AddScreen2 extends StatefulWidget {
  @override
  _AddScreen2State createState() => _AddScreen2State();
}

class _AddScreen2State extends State<AddScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

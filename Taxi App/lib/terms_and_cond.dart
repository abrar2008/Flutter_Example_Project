import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
import 'package:sizer/sizer.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  _TermsAndConditionState createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: Card(
          shape: CircleBorder(),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Text(
              'Terms & Condition',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'TAXI CUSTOMER TERMS &',
              style: TextStyle(
                fontSize: 12.8.sp,
                fontWeight: FontWeight.bold,
              ),
            )),
            Center(
                child: Text(
              'CONDITION',
              style: TextStyle(
                fontSize: 12.8.sp,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 95.w,
              child: Center(
                child: Text(
                  "IMPORTANT:\n\n\nTHESE TERMS AND CONDITIONS\n(“Conditions”) DEFINE THE BASIS UPON\n WHICH GETT WILL PROVIDE YOU WITH\nACCESS TO THE GETT MOBILE\nAPPLICATION PLATFORM, PURSUANT TO\nWHICH YOU WILL BE ABLE TO REQUEST\nCERTAIN TRANSPORTATION SERVICES\nFROM THIRD PARTY DRIVERS BY PLACING\nORDERS THROUGH GETT’S MOBILE\nAPPLICATION PLATFORM. THESE\nCONDITIONS (TOGETHER WITH THE\nDOCUMENTS REFERRED TO HEREIN) SET\nOUT THE TERMS OF USE ON WHICH YOU\nMAY, AS A CUSTOMER, USE THE APP AND\nREQUEST TRANSPORTATION SERVICES.\nBY USING THE APP AND TICKING THE\nACCEPTANCE BOX, YOU INDICATE THAT\nYOU ACCEPT THESE TERMS OF USE\nWHICH APPLY, AMONG OTHER THINGS, TO\nALL SERVICES HEREINUNDER TO BE\nRENDERED TO OR BY YOU VIA THE APP\nWITHIN THE UK AND THAT YOU AGREE TO\nABIDE BY THEM. USE THE APP AND\nREQUEST TRANSPORTATION SERVICES. BY\nUSING THE APP AND TICKING THE\nACCEPTANCE BOX, YOU INDICATE THAT\n YOU ACCEPT THESE TERMS OF USE\nWHICH APPLY, AMONG OTHER THINGS, TO\nALL SERVICES HEREINUNDER TO BE\n RENDERED TO OR BY YOU VIA THE APP\n WITHIN THE UK AND THAT YOU AGREE\n TO ABIDE BY THEM.\n ",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xFF1152fd), borderRadius: BorderRadius.circular(15)),
                child: FlatButton(
                  onPressed: () {Navigator.pushNamed(context, MyRoute.signinRoute);},
                  child: Text(
                    'I Agree',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

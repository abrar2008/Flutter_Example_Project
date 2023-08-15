import 'package:flutter/material.dart';
import 'package:internship/routes.dart';
class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                Container(
                  height: 230,
                  child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: Color(0xFF1152fd),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: UserAccountsDrawerHeader(
                          decoration: BoxDecoration(color: Color(0xFF1152fd)),
                          accountName: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("Carson"),
                          ),
                          accountEmail: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("carson@mobility.com"),
                          ),
                          currentAccountPicture:CircleAvatar(
                            child: CircleAvatar(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xFF1152fd),
                                  radius: 10.0,
                                  child: Icon(
                                    Icons.edit,
                                    size: 18.0,
                                    color: Color(0xFF404040),
                                  ),
                                ),
                              ),
                              radius: 38.0,
                              backgroundImage: AssetImage(
                                  'assets/uu.png'),
                            ),
                          ),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:40,left:30),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "RIDE HISTORY",
                          // textScaleFactor: 1.2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        title: Text(
                          "PAYMENT",
                          // textScaleFactor: 1.2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        title: Text(
                          "PROMOCODE",
                          //  textScaleFactor: 1.2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        title: Text(
                          "SUPPORT",
                          //textScaleFactor: 1.2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 33),
                      ListTile(
                        title:InkWell(
                          onTap: (){Navigator.pushNamed(context, MyRoute.signinRoute);},
                          child: Text(
                            'Sign out',
                            style: TextStyle(
                              color: Color(0xFF1152fd),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    //);
  }
}




import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guily_app/screens/authenticated_screen/first_screen.dart';
import 'FilemanagerScreen.dart';
import 'package:flutter/cupertino.dart';
import 'security.dart';
import 'video_and_audio_screen.dart';
import 'PDFview_screen.dart';
import 'cloud_and_connections.dart';
import 'moresettings/moresettings.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => FirstScreenAfterAuth()));
                  },
                  child: Container(
                      width: 80,
                      height: 45,
                      color: Colors.transparent,
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: SvgPicture.network(
                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FGroup%20131.svg?alt=media&token=e492c6d8-8e5f-4fe5-8522-d3c4957745a2',
                          matchTextDirection: true,
                          allowDrawingOutsideViewBox: false,
                        ),
                      )),
                ),
                Text(
                  'Settings',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => FileManagerScreen()));
              },
              child: ListTile(
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FGroup%20165.png?alt=media&token=3d52af5f-284d-4f89-8454-1bd398d6550b'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2Ffolder.svg?alt=media&token=f38752e0-966c-4b77-8abb-77c43b72684d',
                    fit: BoxFit.none,
                  ),
                ),
                title: Text(
                  "File Manager",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FPath%20250.svg?alt=media&token=5b888cb5-37f3-4aa7-aa5b-284808f346c7'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(
                color: Colors.grey[200],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => SecurityScreen()));
              },
              child: ListTile(
                trailing: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FPath%20250.svg?alt=media&token=5b888cb5-37f3-4aa7-aa5b-284808f346c7'),
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FGroup%20166.png?alt=media&token=5070603c-e788-4038-9648-b87de9fda96d'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2Flock.svg?alt=media&token=72fc0c2e-a0c0-43bf-b7f0-2042c4b38335',
                    fit: BoxFit.none,
                  ),
                ),
                title: Text(
                  "Security",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(
                color: Colors.grey[200],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => PDFViewerScreen()));
              },
              child: ListTile(
                trailing: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FPath%20250.svg?alt=media&token=5b888cb5-37f3-4aa7-aa5b-284808f346c7'),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.13,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FGroup%20168.png?alt=media&token=9cea5451-a7af-48e5-b3cb-e5540d71877a'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SvgPicture.network(
                      'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2Fpdf.svg?alt=media&token=d4b47df4-6b96-49c0-aebb-e0c5a01cfa19',
                    ),
                  ),
                ),
                title: Text(
                  "PDF Viewer",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(
                color: Colors.grey[200],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => VideoAndAudioScreen()));
              },
              child: ListTile(
                trailing: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FPath%20250.svg?alt=media&token=5b888cb5-37f3-4aa7-aa5b-284808f346c7'),
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FGroup%20169.png?alt=media&token=cfbb309c-7c51-4774-b4a2-586d9d114218'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2Fyoutube%20(1).svg?alt=media&token=878a13a2-dc39-4c1f-bddf-afa2d4d3c9b3',
                    fit: BoxFit.none,
                  ),
                ),
                title: Text(
                  "Video & audio player",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(
                color: Colors.grey[200],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => CloudAndConnectionsScreen()));
              },
              child: ListTile(
                trailing: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FPath%20250.svg?alt=media&token=5b888cb5-37f3-4aa7-aa5b-284808f346c7'),
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FGroup%20170.png?alt=media&token=5056dd35-e442-481e-8891-75185da2d5d6'),
                    ),
                  ),
                  child: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2Fgoogle-cloud-search.svg?alt=media&token=33198e92-19ba-458a-8f52-7fc0f797ae14',
                    fit: BoxFit.none,
                  ),
                ),
                title: Text(
                  "Cloud and connections",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(
                color: Colors.grey[200],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => MoreSettings()));
              },
              child: ListTile(
                trailing: SvgPicture.network(
                    'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2FPath%20250.svg?alt=media&token=5b888cb5-37f3-4aa7-aa5b-284808f346c7'),
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/giulyaiapp.appspot.com/o/images%2Fsettingicons%2FEllipse%2026.png?alt=media&token=1439ab7f-b5a4-44fa-b596-3fdf94138620'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Icon(
                    Icons.settings,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
                title: Text(
                  "More Settings",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Divider(
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

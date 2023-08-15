import 'package:flutter/material.dart';
import 'package:guily_app/screens/HomeScreen/homeScreen.dart';
import 'package:guily_app/screens/clean_and_analytics_screen/clean_and_analytics_screen.dart';
import 'package:guily_app/screens/connect_screen/connect_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guily_app/widgets/colors.dart';
import 'package:guily_app/screens/recent_screen/recent_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:guily_app/screens/mainScreen/mainScreen.dart';

class TabSelector extends StatefulWidget {
  @override
  _TabSelectorState createState() => _TabSelectorState();
}

class _TabSelectorState extends State<TabSelector> {
  bool gridView = true;
  bool selected = false;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  bool val7 = false;
  bool val8 = false;

  bool listView = true;
  int pageIndex = 2;
  final HomeScreen _homeScreen = new HomeScreen();
  final RecentScreen _recentScreenTab = new RecentScreen();

  final ConnectionScreen _connectionTab = new ConnectionScreen();
  final CleanAndAnalyticsScreen _cleanAndAnalyticsTab =
      new CleanAndAnalyticsScreen();
  final MainScreenGiuly _mainScreen = new MainScreenGiuly();
  // String sdkKey =
  //     '406126e4c309e52ca1f4763849379e3b2e956eca572e1d8b807a3e2338fdd0dc/stage';
  Widget _showTab = new MainScreenGiuly();

  Widget _tabSelector(int tab) {
    switch (tab) {
      case 0:
        return _homeScreen;
        break;
      case 1:
        return _recentScreenTab;
        break;
      case 2:
        return _mainScreen;
        break;
      case 3:
        return _connectionTab;
        break;
      case 4:
        return _cleanAndAnalyticsTab;
        break;
      default:
        return Container(
          child: new Center(
            child: new Text('No tab found'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: _showTab,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // iconSize: 40,
        unselectedIconTheme: IconThemeData(
          size: 20,
        ),
        selectedIconTheme: IconThemeData(
          size: 20,
        ),
        selectedLabelStyle: GoogleFonts.nunito(
          fontSize: 10,
          color: Colors.black,
        ),
        unselectedLabelStyle: GoogleFonts.nunito(
          fontSize: 10,
          color: Colors.black,
        ),
        showUnselectedLabels: true,
        showSelectedLabels: true,

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        elevation: 10,
        currentIndex: pageIndex,
        onTap: (int tappedIndex) {
          setState(() {
            pageIndex = tappedIndex;
            _showTab = _tabSelector(tappedIndex);
          });
        },

        // selectedItemColor: ColorTheme.color_theme_background,

        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: '',
            activeIcon: SvgPicture.network(
              'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FIcon%20open-home.svg?alt=media&token=fbf9ece4-9e74-429e-bd7f-c67f062fb57f',
            ),
            icon: SvgPicture.network(
              'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FIcon%20open-home-unactive.svg?alt=media&token=1e514bc6-1912-4b02-9aa9-dbe6cef8dcf9',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: '',
            activeIcon: SvgPicture.network(
              'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FGroup%2055.svg?alt=media&token=4ebf9f40-1eca-4dc9-b8cb-927a194e3853',
            ),
            icon: SvgPicture.network(
              'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FGroup55.svg?alt=media&token=ca0a1b38-ae2a-4082-8d56-4d0747ba07cb',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: ' ',
            activeIcon: Icon(
              Icons.add_box_outlined,
              color: ColorTheme.color_theme_background,
            ),
            icon: SvgPicture.network(
              'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FGroup54.svg?alt=media&token=47464fe1-e3d6-4876-bf23-9847913dbe8f',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: ' ',
            activeIcon: Icon(
              Icons.wifi,
              color: ColorTheme.color_theme_background,
            ),
            icon: SvgPicture.asset(
              'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FGroup53.svg?alt=media&token=f2c5999e-0063-4981-8150-0587f9b860f3',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: ' ',
            activeIcon: Icon(
              Icons.signal_cellular_alt,
              color: ColorTheme.color_theme_background,
            ),
            icon: SvgPicture.network(
              'https://firebasestorage.googleapis.com/v0/b/gilly-app.appspot.com/o/images%2FGroup%20200.svg?alt=media&token=dd671fa1-66e3-4e7e-beff-406667bc1596',
            ),
          ),
        ],
      ),
    );
  }
}

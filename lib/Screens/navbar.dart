import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:hotel/Screens/account.dart';
import 'package:hotel/Screens/home.dart';
import 'package:hotel/Screens/schedule.dart';
import 'package:hotel/Screens/search.dart';
//nav bar text appeared side
class BottomNavyBarPage extends StatefulWidget {
  @override
  _BottomNavyBarPageState createState() => _BottomNavyBarPageState();
}

class _BottomNavyBarPageState extends State<BottomNavyBarPage> {
  int currentIndex = 0;
  //Screns you used in nav bar
  List screens = [
    Home(),
    Schedule(),
    Search(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Color(0xff4C4DDC),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.calendar_month),
            title: Text('Schedule'),
            activeColor: Color(0xff4C4DDC),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Search',
            ),
            activeColor: Color(0xff4C4DDC),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person_3),
            title: Text('Account'),
            activeColor: Color(0xff4C4DDC),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

import 'package:fittnessapp/dashboard/home_page.dart';
import 'package:fittnessapp/profile/profile.dart';
import 'package:fittnessapp/meal_planner/home_page.dart';
import 'package:fittnessapp/yoga/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

// ignore: camel_case_types
class bottum_page extends StatefulWidget {
  const bottum_page({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _bottum_pageState createState() => _bottum_pageState();
}

// ignore: camel_case_types
class _bottum_pageState extends State<bottum_page> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    home(),
    meal_plan(),
    Yoga(),
    profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              haptic: true, // haptic feedback
              tabBorderRadius: 15,

              curve: Curves.easeOutExpo, // tab animation curves
              duration:
                  const Duration(milliseconds: 100), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              iconSize: 24, // tab button icon size

              activeColor: Colors.purple.shade200,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.paperPlaneAlt,
                  text: 'Meal Planner',
                ),
                GButton(
                  icon: LineIcons.camera,
                  text: 'Yoga',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mycarbon/HomeScreen.dart';
import 'package:mycarbon/welcomeScreen.dart';

import 'Widgets/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final List<Widget> _widgetOptions = [
    HomeScreen(),
    WelcomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(currentIndex),
      ),
      bottomNavigationBar: AppBottomNavBar(
          currentIndex: currentIndex,
          ontap: (index) => () {
                currentIndex = index;
                setState(() {});
              }),
    );
  }
}

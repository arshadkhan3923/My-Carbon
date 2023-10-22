import 'package:flutter/material.dart';
import 'package:mycarbon/profile_screen.dart';
import 'package:mycarbon/reward_screen.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({Key? key}) : super(key: key);
  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int Index = 0;
  List<Widget> widgetList = [
    ProfileScreen(),
    RewardScreen(),
    RewardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 78,
        width: 428,
        child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            backgroundColor: Colors.lightGreen,
            showUnselectedLabels: true,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            // backgroundColor: Colors.transparent,
            onTap: (index) {
              setState(() {
                Index = index;
              });
            },
            currentIndex: Index,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Graph Report Script.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/House.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Calculator.png")),
                label: "",
              ),
            ]),
      ),
      body: widgetList[Index],
    );
  }
}

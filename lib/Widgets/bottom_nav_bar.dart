import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  AppBottomNavBar({Key? key, this.ontap, required this.currentIndex})
      : super(key: key);

  void Function(int)? ontap;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined), label: 'Message'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: 'Profile'),
            ],
            iconSize: 25,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: ontap,
            currentIndex: currentIndex,
          )),
    );
  }
}

import 'package:flutter/material.dart';

import '../data/services.dart';

class BottomNavBar extends StatelessWidget {
  final int? selectedIndex;

  BottomNavBar({this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 226, 225, 225),
      selectedItemColor: Colors.white,
      currentIndex: selectedIndex ?? 1,
      selectedFontSize: 10,
      unselectedFontSize: 8,
      onTap: (int index) {
        dataService.navigateBetweenScreens(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
      ],
    );
  }
}

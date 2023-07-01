import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: (value) => onTabChange!(value),
      mainAxisAlignment: MainAxisAlignment.center,
      activeColor: Colors.black,
      color: Colors.grey,
      backgroundColor: Colors.grey.shade200,
      gap: 16,
      tabs: const [
        GButton(
          icon: Icons.date_range,
          text: 'Randevularım',
        ),
        GButton(
          icon: Icons.home,
          text: 'Anasayfa',
        ),
        GButton(
          icon: Icons.person,
          text: 'Profil',
        ),
      ],
    );
  }
}

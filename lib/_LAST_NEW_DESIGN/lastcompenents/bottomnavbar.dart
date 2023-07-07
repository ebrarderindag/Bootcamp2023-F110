import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LastMyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   LastMyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  GNav(
      onTabChange: (value) => onTabChange!(value),
      mainAxisAlignment: MainAxisAlignment.center,
      color: Colors.grey,
      activeColor: Colors.black,
      backgroundColor: Colors.grey.shade200,
      tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Bakıcılar',
        ),
        GButton(
          icon: Icons.date_range_rounded,
          text: 'Randevularım',
        ),
        GButton(icon: Icons.person,
        text: 'Profilim',)
      ],
    );
  }
}

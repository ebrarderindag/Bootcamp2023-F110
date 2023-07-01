import 'package:f110/newdesign/profilepage.dart';
import 'package:f110/newdesign/randevuPage.dart';
import 'package:flutter/material.dart';

import 'Anasayfapage.dart';
import 'bottomnavbar.dart';

class NewAppMain extends StatefulWidget {
  const NewAppMain({super.key});

  @override
  State<NewAppMain> createState() => _NewAppMainState();
}

class _NewAppMainState extends State<NewAppMain> {
  int _selectedindex = 0;
  void navigateBottomBar(int newIndex) {
    setState(() {
      _selectedindex = newIndex;
    });
  }
//sayfalar
    final List<Widget> _pages=[
      //randevularım
      RandevuPage(),
      //main
      AnaSayfa(),
      //profil
      ProfilePage(),
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
        
      ),
      body: _pages[_selectedindex],
    );
  }
}

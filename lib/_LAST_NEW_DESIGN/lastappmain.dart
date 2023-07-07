import 'package:f110/_LAST_NEW_DESIGN/lastcompenents/bottomnavbar.dart';
import 'package:f110/_LAST_NEW_DESIGN/pages/cart_page.dart';
import 'package:f110/_LAST_NEW_DESIGN/pages/profile_page.dart';
import 'package:f110/_LAST_NEW_DESIGN/pages/shop_page.dart';
import 'package:flutter/material.dart';

class LastNewAppMain extends StatefulWidget {
  const LastNewAppMain({super.key});

  @override
  State<LastNewAppMain> createState() => _LastNewAppMainState();
}

class _LastNewAppMainState extends State<LastNewAppMain> {
  int _lastSelectedindex=0;
  void lastNavigateBottomBar(int index){
    setState(() {
      _lastSelectedindex=index;
    });
  }

  //pages 

  final List <Widget> _pages=[
    LastShopPage(),//bakıcı page
    LastCartPage(),//randevu page
    LastProfilePage()//profilepage
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: LastMyBottomNavBar(onTabChange:(index) => lastNavigateBottomBar(index),),
      body: _pages[_lastSelectedindex],
    );
  }
}

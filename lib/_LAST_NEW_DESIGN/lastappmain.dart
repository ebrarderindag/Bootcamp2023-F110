import 'package:f110/_LAST_NEW_DESIGN/lastcompenents/bottomnavbar.dart';
import 'package:f110/_LAST_NEW_DESIGN/pages/cart_page.dart';
import 'package:f110/_LAST_NEW_DESIGN/pages/profile_page.dart';
import 'package:f110/_LAST_NEW_DESIGN/pages/shop_page.dart';
import 'package:f110/pages/userpage.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class LastNewAppMain extends StatefulWidget {
  const LastNewAppMain({super.key});

  @override
  State<LastNewAppMain> createState() => _LastNewAppMainState();
}

class _LastNewAppMainState extends State<LastNewAppMain> {
  int _lastSelectedindex = 0;
  void lastNavigateBottomBar(int index) {
    setState(() {
      _lastSelectedindex = index;
    });
  }

  //pages

  final List<Widget> _pages = [
    const LastShopPage(), //bakıcı page
    const LastCartPage(), //randevu page
    const LastProfilePage() //profilepage
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF00FF00), Color(0xFF00BFFF)],
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'PawBuddy',
                        style: GoogleFonts.exo2(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                
                child: ListTile(
                  leading:  const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                  title: const Text(
                    'Profil',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      _lastSelectedindex=2;
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
               const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                  title: const Text(
                    'Ayarlar',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {

                  },
                ),
              ),
               const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ListTile(
                  leading:  const Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                  title: const Text(
                    'Hakkında',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                  },
                ),
              ),
               const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: const Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                  title: const Text(
                    'Çıkış Yap',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const UserPage();
                    },
                  ));
                  },
                ),
              ),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: LastMyBottomNavBar(
        onTabChange: (index) => lastNavigateBottomBar(index),
      ),
      body: _pages[_lastSelectedindex],
    );
  }
}

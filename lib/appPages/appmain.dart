import 'package:f110/appPages/TabPages/bak%C4%B1c%C4%B1lartab.dart';
import 'package:flutter/material.dart';

import 'TabPages/profil.dart';

class AppMain extends StatefulWidget {
  const AppMain({super.key});

  @override
  State<AppMain> createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  Widget build(BuildContext context) {
    return    const DefaultTabController(length: 3, child: Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: TabBar(tabs: [
          Tab(icon: Icon(Icons.calendar_month_outlined,color: Colors.green)),
          Tab(icon: Icon(Icons.face,color: Colors.green)),
          Tab(icon: Icon(Icons.person,color: Colors.green)),
          
        ]),
      ),
      body: 
      TabBarView(children: [
        //Text'ler yerine sayfalar gelecek
        Text('Randevularım'),
        BakiciTabListView(),
        ProfileTab(),
      ])
    ));
  }
}
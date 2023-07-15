import 'package:f110/_LAST_NEW_DESIGN/lastcompenents/profile_tile.dart';
import 'package:flutter/material.dart';

class LastProfilePage extends StatelessWidget {
  const LastProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Center(
              child: Icon(
            Icons.person,
            size: 250,
          )),
          const SizedBox(
            height: 16,
          ),
          const ProfileTile(
              icon: Icon(Icons.account_circle),
              text: Text('Berke Yılmaz',
                  style: TextStyle(fontWeight: FontWeight.w500))),
          const ProfileTile(
              icon: Icon(Icons.place),
              text: Text('Manisa',
                  style: TextStyle(fontWeight: FontWeight.w500))),
          const ProfileTile(
              icon: Icon(Icons.medical_information),
              text: Text(
                'Hakkımda',
                style: TextStyle(fontWeight: FontWeight.w500),
              )),
          const ProfileTile(
              icon: Icon(Icons.settings),
              text: Text('Ayarlar',
                  style: TextStyle(fontWeight: FontWeight.w500))),
          Center(
              child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8, right: 16, left: 16),
                  child: Card(
                    color: Colors.grey.shade300,
                    shape: const StadiumBorder(),
                    child: ListTile(
                      title: Text('Uygulama Hakkında',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      shape: StadiumBorder(),
                      leading: Icon(Icons.info),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text("PawBuddy/OUA'23 - Team F-110"),
                                ));
                      },
                    ),
                  )))
        ],
      ),
    ));
  }
}

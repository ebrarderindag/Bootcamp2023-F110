
import 'package:f110/_LAST_NEW_DESIGN/lastappmain.dart';
import 'package:flutter/material.dart';

import '../loginpages.dart/loginpage.dart';
import '../loginpages.dart/registerask.dart';
import '../newdesign/newAppMain.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    String giris = 'Giriş';
    String kayitOl = 'Kayıt Ol';

    const appName = 'PawBuddy';
    const guest = 'Misafir olarak devam et';
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8,left:24,right:24),
            child: Text(appName,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 80,
                )),
          ),
        ),
        const SizedBox(
          height: 75,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ilkLoginPage();
                        },
                      ));
                    }, 
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.green,
                        elevation: 6),
                    child: Text(giris))),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const RegisterAsk();
                        },
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.green,
                        elevation: 6),
                    child: Text(kayitOl))),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(36.0),
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const LastNewAppMain();
                  },
                ));
              },
              child: Text(guest,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                      ))),
        )
      ],
    ));
  }
}

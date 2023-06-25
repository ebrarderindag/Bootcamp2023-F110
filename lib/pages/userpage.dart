import 'package:f110/appPages/appmain.dart';
import 'package:flutter/material.dart';

import '../loginpages.dart/loginpage.dart';
import '../loginpages.dart/registerask.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    String giris = 'Giriş';
    String kayitOl = 'Kayıt Ol';

    const appName = 'F-110';
    const guest = 'Misafir olarak devam et';
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(appName,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 100,
            )),
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
                          return LoginPage();
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
                    return const AppMain();
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

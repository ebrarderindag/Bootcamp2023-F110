import 'package:f110/appPages/TabPages/profil.dart';
import 'package:f110/pages/userpage.dart';
import 'package:flutter/material.dart';

class Welcoming3 extends StatelessWidget {
  const Welcoming3({super.key});

  @override
  Widget build(BuildContext context) {
    const subtext =
        'Uygulama evcil hayvan sahiplerinin bakıcılarla iletişim kurmasını ve seyahat planlarını düzenlemesini kolaylaştırır. Ayrıca, kullanıcıların bakıcılar hakkında değerlendirme ve geri bildirimler paylaşmasına olanak tanır, böylece diğer kullanıcılar için referans oluşturur ve kaliteli bakıcılara yönlendirme sağlar.';
    const _appName = 'appName';
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
              height: 550,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 130),
                    child: Center(
                        child: Text(_appName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                            ))),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(subtext,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: StadiumBorder(),
                              elevation: 5
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return UserPage();
                              },));
                            },
                            child: const Text('Devam et',
                                style: TextStyle(color: Colors.green))),
                      ),
                    ],
                  )
                ],
              )),
        )
      ],
    ));
  }
}

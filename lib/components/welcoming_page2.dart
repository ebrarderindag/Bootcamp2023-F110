import 'package:flutter/material.dart';


class Welcoming2 extends StatelessWidget {
  const Welcoming2({super.key});

  @override
  Widget build(BuildContext context) {
    const subtext='Evcil hayvan sahiplerinin seyahat ettiği zamanlarda güvenilir ve deneyimli bakıcıları bulmalarına olanak sağlar, böylece evcil hayvanlarını güvende ve iyi bakımlı bir ortamda bırakabilirler.';
    const appName = 'App Name';
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
              height:550,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Center(
                        child: Text(appName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                            ))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(subtext,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                        )),
                  ),
                ],
              )),
        )
      ],
    ));
  }
}

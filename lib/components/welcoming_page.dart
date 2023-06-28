import 'package:flutter/material.dart';

class Welcoming1 extends StatelessWidget {
  const Welcoming1({super.key});

  @override
  Widget build(BuildContext context) {
    const subtext =
        'Evcil hayvan sahiplerinin şehir dışına çıktıklarında rahatlıkla hayvanlarını güvende bırakabilecekleri sevgi dolu bakıcılar bulmalarını sağlayan bir platformdur. Evcil hayvanınızın ihtiyaçlarına duyarlı, deneyimli ve sevgi dolu bakıcıları bulmak artık daha kolay!';
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Center(
                        child: Text('HOŞ GELDİN!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
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
                          fontSize: 12,
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

import 'package:f110/_LAST_NEW_DESIGN/lastappmain.dart';
import 'package:f110/components/textfields.dart';

import 'package:flutter/material.dart';

class ilkLoginPage extends StatelessWidget {
  ilkLoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var welcomingData = 'Tekrardan Hoş Geldin!';
    const giristext = 'Giriş Yap';
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(welcomingData,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.grey[700], fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 24,
                ),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Kullanıcı Adı',
                  obscureText: false,
                ),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Şifre',
                  obscureText: true,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: TextButton(
                          onPressed: () {}, child: Text('Şifremi Unuttum!')),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const LastNewAppMain();
                            },
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: const StadiumBorder(),
                          elevation: 6,
                        ),
                        child: const Text(giristext)))
              ],
            ),
          ),
        ));
  }
}

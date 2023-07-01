
import 'package:f110/components/textfields.dart';
import 'package:f110/newdesign/newAppMain.dart';
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
                const SizedBox(
                  height: 100,
                ),
                 SizedBox(width: 200 ,child: ElevatedButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) {return const NewAppMain();},));},style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: const StadiumBorder(),
                  elevation:6,
                ), child: const Text(giristext)))
              ],
            ),
          ),
        ));
  }
}

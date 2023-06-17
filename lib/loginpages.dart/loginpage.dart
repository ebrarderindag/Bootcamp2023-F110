import 'package:f110/components/mybutton.dart';
import 'package:f110/components/textfields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var welcomingData = 'Tekrardan Hoş Geldin!';
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
                const Mybuttons(text: 'Giriş Yap')
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

import '../components/mybutton.dart';
import '../components/textfields.dart';

class BakiciRegister extends StatelessWidget {
   BakiciRegister({super.key});
final usernameController = TextEditingController();
final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var title2 = 'Bakıcı Kayıt Ekranı';
    var hintText2 = 'Kullanıcı Adı';
    var hintText3 = 'Şifre';
    const pageText = 'Bakıcı Kayıt Ekranı';
    return Scaffold(
        appBar: AppBar(
          title: Text(title2),
          centerTitle: true,
          elevation: 10,
        ),
        body:  Center(child: SingleChildScrollView(child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(pageText,
                         style: TextStyle(
                color: Colors.grey[700],
                fontSize: 30,
                         )),
             ),
            MyTextField(
              controller: usernameController,
            hintText: hintText2,
            obscureText: false,),
            MyTextField(
              controller: passwordController,
            hintText: hintText3,
            obscureText: true,
            ),
            const SizedBox(height: 100,),
            const Mybuttons(text: 'Kayıt Ol',),
          ],
        



        ))));
  }
}

import 'package:f110/loginpages.dart/registerbakici.dart';
import 'package:f110/loginpages.dart/registersahip.dart';
import 'package:flutter/material.dart';

class RegisterAsk extends StatelessWidget {
  const RegisterAsk({super.key});

  @override
  Widget build(BuildContext context) {
    var bakicisoru = 'Bakıcıyım';
    var sahipsoru = 'Evcil Hayvan Sahibiyim';
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {return BakiciRegister();},));
            }, child: Text(bakicisoru,style:const TextStyle(color: Colors.green,))),
             const Divider(
              indent: 75,
              endIndent: 75,
              color: Colors.green,
            ),
            TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) {return SahipRegister();},));}, child: Text(sahipsoru,style:const TextStyle(color: Colors.green)))
          ],
        ),
      )
    );
  }
}
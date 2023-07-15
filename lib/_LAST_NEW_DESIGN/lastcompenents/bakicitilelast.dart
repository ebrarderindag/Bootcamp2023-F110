import 'package:f110/_LAST_NEW_DESIGN/models/bakici.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LastBakiciTile extends StatelessWidget {
  final Bakici bakici;
  void Function()? onPressed;
  void Function()? onTap;
  final Widget icon;
   LastBakiciTile({super.key, required this.bakici,required this.onPressed, required this.icon,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: ListTile(
            title: Text(bakici.name,style: const TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text(bakici.yas.toString()+' '+bakici.meslek,),
            leading: const Icon(Icons.person),
            trailing: IconButton(onPressed: onPressed, icon: icon),
          ),
        ),
      ),
    );
  }
}
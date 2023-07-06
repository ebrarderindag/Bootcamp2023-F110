import 'package:flutter/material.dart';

import '../models/bakıcılar.dart';

// ignore: must_be_immutable
class BakiciTile extends StatelessWidget {
  final Bakicilar bakici;
  final Widget trailing;
  void Function()? onTap;
 BakiciTile({super.key, required this.bakici,required this.onTap, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green.shade400,
            borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
          child: ListTile(
            leading: const Icon(Icons.person),
            trailing: trailing,
            title: Text(bakici.name,style: const TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text(bakici.yas.toString() + ' ' + bakici.meslek,style: const TextStyle(fontWeight: FontWeight.w400),),
          ),
        ),
      ),
    );
  }
}

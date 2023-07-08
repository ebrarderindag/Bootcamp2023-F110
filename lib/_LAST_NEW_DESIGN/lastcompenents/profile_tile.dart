import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final Widget icon;
  final Widget text;
  const ProfileTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 8,right: 16,left: 16),
                    child: Card(
                      color: Colors.grey.shade300,
                      shape: StadiumBorder(),
                      child:  ListTile(
                        title: text,
                        shape: StadiumBorder(),
                        leading: icon,
                      ),
                    )));
  }
}
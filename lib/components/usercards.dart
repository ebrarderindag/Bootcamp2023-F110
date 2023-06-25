import 'package:flutter/material.dart';

class UserCards extends StatelessWidget {
  const UserCards({super.key, required this.name,required this.yas, required this.meslek});
 final String name;
 final int yas;
 final String meslek;
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 200,
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          color: Colors.green[500],
          
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(name,style: textstil()),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Padding(
                  padding: const EdgeInsets.only(left:18,),
                  child: Text(yas.toString(),style: Meslekstil()),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Padding(
                  padding: const EdgeInsets.only(left:18,),
                  child: Text(meslek,style: Meslekstil()),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  TextStyle textstil() {
    return const TextStyle(fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1);
  }
}
  // ignore: non_constant_identifier_names
  TextStyle Meslekstil() {
    return const TextStyle(fontSize: 14,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1);
  }



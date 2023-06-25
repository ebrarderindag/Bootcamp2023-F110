import 'package:flutter/material.dart';
//HAKKINDA VE YAŞ KISMINDAKİ BAŞLIKLARLA METİNLERİN AYRIMI OLSUN AYRI AYRI CONTAİNER DA YAPABİLRSİN
class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Berke Yılmaz';

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 64,
                ),
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border.fromBorderSide(
                            BorderSide(color: Colors.grey, width: 8)),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(500))),
                    child:
                        Icon(Icons.person, color: Colors.grey[500], size: 200)),
              ),
            ],
          ),
          
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 220,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(child: Text(name, style: textstil())),
          ),
          const SizedBox(height: 30,),
          Divider(color: Colors.grey.shade400),
          const SizedBox(
            height: 30,
          ),
          
        ],
      ),
    ));
  }

  
}

TextStyle baslikstil() {
    return const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
        overflow: TextOverflow.ellipsis);
  }
TextStyle textstil() {
    return const TextStyle(
        fontSize: 17,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
        overflow: TextOverflow.ellipsis);
  }
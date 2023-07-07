/*import 'package:f110/newdesign/dateselectionpage.dart';
import 'package:f110/newdesign/models/bak%C4%B1c%C4%B1lar.dart';
import 'package:f110/newdesign/models/modeller.dart';
import 'package:f110/newdesign/newdesigncomponents/bakiciTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  void goToDatePage(Bakicilar bakici) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DateSelectionPage(bakici: bakici),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PawBuddy>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Text(
                'Bakıcılar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context, index) {
                    Bakicilar individualBakici = value.shop[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BakiciTile(
                        bakici: individualBakici,
                        onTap: () => goToDatePage(individualBakici),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/
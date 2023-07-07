/*import 'package:f110/newdesign/models/modeller.dart';
import 'package:f110/newdesign/newdesigncomponents/bakiciTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/bakıcılar.dart';

class RandevuPage extends StatefulWidget {
  const RandevuPage({super.key});

  @override
  State<RandevuPage> createState() => _RandevuPageState();
}

class _RandevuPageState extends State<RandevuPage> {
  void removeFromCart(Bakicilar bakici) {
    Provider.of<PawBuddy>(context, listen: false).removeFromCard(bakici);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PawBuddy>(
      builder: (context, value, child) => SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Center(
                  child: Text(
                'Randevularım',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              )),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, index) {
                Bakicilar bakici = value.shop[index];
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 16),
                  child: BakiciTile(
                    bakici: bakici,
                    onTap: () => removeFromCart(bakici),
                    trailing: const Icon(Icons.delete),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}*/

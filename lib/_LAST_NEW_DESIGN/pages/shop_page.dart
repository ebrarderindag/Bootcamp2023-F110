import 'package:f110/_LAST_NEW_DESIGN/lastcompenents/bakicitilelast.dart';
import 'package:f110/_LAST_NEW_DESIGN/models/bakici.dart';
import 'package:f110/_LAST_NEW_DESIGN/models/bakicishop.dart';
import 'package:f110/_LAST_NEW_DESIGN/pages/Lastdateselect.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LastShopPage extends StatefulWidget {
  const LastShopPage({super.key});

  @override
  State<LastShopPage> createState() => _LastShopPageState();
}

class _LastShopPageState extends State<LastShopPage> {
  void goToDatePage(Bakici bakici) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LastDateSelectionPage(bakici: bakici),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BakiciShop>(
        builder: (context, value, child) => SafeArea(
              child: SafeArea(
                child: Column(
                  children: [
                    const Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Bakıcılar',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500)),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.bakiciShop.length,
                            itemBuilder: (context, index) {
                              Bakici eachBakici = value.bakiciShop[index];
                              return LastBakiciTile(
                                onTap: () => goToDatePage(eachBakici),
                                bakici: eachBakici,
                                icon: const Icon(Icons.add),
                                onPressed: () => goToDatePage(eachBakici),
                              );
                            }))
                  ],
                ),
              ),
            ));
  }
}

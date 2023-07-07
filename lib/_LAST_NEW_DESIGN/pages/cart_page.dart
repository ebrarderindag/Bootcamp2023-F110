import 'package:f110/_LAST_NEW_DESIGN/lastcompenents/bakicitilelast.dart';
import 'package:f110/_LAST_NEW_DESIGN/models/bakici.dart';
import 'package:f110/_LAST_NEW_DESIGN/models/bakicishop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LastCartPage extends StatefulWidget {
  const LastCartPage({super.key});

  @override
  State<LastCartPage> createState() => _LastCartPageState();
}

class _LastCartPageState extends State<LastCartPage> {
  void removeFromCart(Bakici Bakici){
    Provider.of<BakiciShop>(context,listen: false).removeItemFromCart(Bakici);
  }
  @override
  Widget build(BuildContext context) {
    return  Consumer<BakiciShop>(builder: (context, value, child) => SafeArea(
      child: Column(
        children: [
           Center(child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Randevularım',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500)),
          )),
          SizedBox(height: 20,),
          Expanded(child: ListView.builder(itemCount: value.userCart.length,itemBuilder: (context, index) {
            Bakici  eachBakici=value.userCart[index];
            return LastBakiciTile(onTap: () => removeFromCart(eachBakici),bakici: eachBakici, onPressed: () => removeFromCart(eachBakici), icon: const Icon(Icons.delete));
          },))
        ],
      ),
    ),);
  }
}
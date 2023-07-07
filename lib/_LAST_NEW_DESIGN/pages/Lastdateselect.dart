import 'package:f110/_LAST_NEW_DESIGN/models/bakici.dart';
import 'package:f110/_LAST_NEW_DESIGN/models/bakicishop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LastDateSelectionPage extends StatefulWidget {
  final Bakici bakici;
  const LastDateSelectionPage({super.key, required this.bakici});

  @override
  State<LastDateSelectionPage> createState() => _LastDateSelectionPageState();
}

class _LastDateSelectionPageState extends State<LastDateSelectionPage> {
  double dateValue = 0.0;
  void customizeDate(double newValue) {
    setState(() {
      dateValue = newValue;
    });
  }

  void addToCard() {
    Provider.of<BakiciShop>(context, listen: false).addItemToCart(widget.bakici);
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Randevu Başarıyla Alındı'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bakici.name),
      ),
      body: Column(
        children: [
          const Icon(Icons.person, size: 250),
           Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Gün Sayısı',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500
                    ),),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Slider(
                        max: 30.0,
                        label: dateValue.toString(),
                        value: dateValue,
                        divisions: 30,
                        onChanged: (value) => customizeDate(value),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 200,
            height: 40,
            child: MaterialButton(
                elevation: 10,
                shape: const StadiumBorder(),
                color: Colors.green.shade500,
                onPressed: () {
                  addToCard();
                },
                child: const Text(
                  'Randevu Al',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
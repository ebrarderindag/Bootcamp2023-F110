/*import 'package:f110/newdesign/models/modeller.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/bakıcılar.dart';

class DateSelectionPage extends StatefulWidget {
  final Bakicilar bakici;
  const DateSelectionPage({super.key, required this.bakici});

  @override
  State<DateSelectionPage> createState() => _DateSelectionPageState();
}

class _DateSelectionPageState extends State<DateSelectionPage> {
  

  double dateValue = 0.0;
  void customizeDate(double newValue) {
    setState(() {
      dateValue = newValue;
    });
  }

  void addToCard() {
    Provider.of<PawBuddy>(context, listen: false).addToCard(widget.bakici);
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
*/
import 'package:f110/newdesign/models/modeller.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/bakıcılar.dart';

class DateSelectionPage extends StatefulWidget {
  const DateSelectionPage({super.key, required this.bakici});
  final Bakicilar bakici;

  @override
  State<DateSelectionPage> createState() => _DateSelectionPageState();
}

class _DateSelectionPageState extends State<DateSelectionPage> {
  TextEditingController dateController = TextEditingController();
  void addToCard() {
    Provider.of<PawBuddy>(context as BuildContext, listen: false)
        .addtocard(widget.bakici);
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: TextField(
                        controller: dateController,
                        decoration: const InputDecoration(
                            icon: Icon(Icons.date_range),
                            labelText: 'Tarih Seçiniz'),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2023),
                              lastDate: DateTime(2101));
                          if (pickedDate != null) {
                            String formatdate =
                                DateFormat("yyyy-mm-dd").format(pickedDate);
                            setState(() {
                              dateController.text = formatdate.toString();
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              )
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
                shape: StadiumBorder(),
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

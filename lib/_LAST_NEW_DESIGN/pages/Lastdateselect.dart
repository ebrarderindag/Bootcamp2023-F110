import 'package:syncfusion_flutter_datepicker/datepicker.dart';
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
  TextEditingController noteController = TextEditingController();
  String note = '';
  double dateValue = 0.0;
  void customizeDate(double newValue) {
    setState(() {
      dateValue = newValue;
    });
  }

  void openNoteDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Bakıcıya Not Bırak'),
        content: TextField(
          controller: noteController,
          maxLines: null,
          decoration: InputDecoration(hintText: 'Notunuzu buraya girin'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              
              Navigator.pop(context);
            },
            child: Text('İptal'),
          ),
          TextButton(
            onPressed: () {
              // ignore: unused_local_variable
              String note = noteController.text;

              Navigator.pop(context);
            },
            child: Text('Kaydet'),
          ),
        ],
      ),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {}

  void addToCard() {
    Provider.of<BakiciShop>(context, listen: false)
        .addItemToCart(widget.bakici);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green.shade500,
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.person,
                  size: 180,
                ),
                Text(
                  widget.bakici.name,
                  style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.bakici.meslek,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade200,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 4,
                      height: 8,
                    ),
                    Text(
                      widget.bakici.yas.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade200,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 250,
                        width: 300,
                        child: SizedBox(
                            child: SfDateRangePicker(
                          view: DateRangePickerView.year,
                          monthViewSettings:
                              const DateRangePickerMonthViewSettings(
                                  firstDayOfWeek: 1),
                          onSelectionChanged: _onSelectionChanged,
                          selectionMode: DateRangePickerSelectionMode.range,
                          selectionColor: Colors.green.shade600,
                          rangeSelectionColor: Colors.green.shade200,
                          selectionShape: DateRangePickerSelectionShape.circle,
                          enablePastDates: false,
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                        elevation: 10,
                        shape: const StadiumBorder(),
                        color: Colors.white,
                        onPressed: () {
                          openNoteDialog();
                        },
                        child: const Text(
                          'Bakıcıya not bırak',
                          style: TextStyle(color: Colors.green),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                        elevation: 10,
                        shape: const StadiumBorder(),
                        color: Colors.white,
                        onPressed: () {
                          addToCard();
                        },
                        child: const Text(
                          'Randevu Al',
                          style: TextStyle(color: Colors.green),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

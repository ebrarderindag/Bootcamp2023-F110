
import 'package:f110/_LAST_NEW_DESIGN/models/bakici.dart';
import 'package:f110/_LAST_NEW_DESIGN/models/bakicishop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class cancelPage extends StatefulWidget {
  final Bakici bakici;
  const cancelPage({super.key, required this.bakici});

  @override
  State<cancelPage> createState() => _cancelPageState();
}
List <String> options=['Acil durumlar','Evcil hayvanın hastalığı veya yaralanması','Kişisel nedenler','Uyumsuzluk','İletişim problemleri','Diğer'];

class _cancelPageState extends State<cancelPage> {
  void removeFromCart() {
    Provider.of<BakiciShop>(context, listen: false)
        .removeItemFromCart(widget.bakici);
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Randevu Başarıyla İptal Edildi'),
      ),
    );
  }
  
  String currentOption=options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bakici.name)
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('İptal Nedenini Seçiniz.',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),),
            ),
            const SizedBox(height: 30,),
            ListTile(title: const Text('Acil durumlar'),
            leading: Radio(value: options[0], groupValue: currentOption, onChanged: (value) {
              setState(() {
                currentOption=value.toString();
              });
            },),),
            ListTile(title: const Text('Evcil hayvanın hastalığı veya yaralanması'),
            leading: Radio(value: options[1], groupValue: currentOption, onChanged: (value) {
              setState(() {
                currentOption=value.toString();
              });
            },),),
             ListTile(title: const Text('Kişisel nedenler'),
            leading: Radio(value: options[2], groupValue: currentOption, onChanged: (value) {
              setState(() {
                currentOption=value.toString();
              });
            },),),
             ListTile(title: const Text('Uyumsuzluk'),
            leading: Radio(value: options[3], groupValue: currentOption, onChanged: (value) {
              setState(() {
                currentOption=value.toString();
              });
            },),),
             ListTile(title: const Text('İletişim problemleri'),
            leading: Radio(value: options[4], groupValue: currentOption, onChanged: (value) {
              setState(() {
                currentOption=value.toString();
              });
            },),),
             ListTile(title: const Text('Diğer'),
            leading: Radio(value: options[5], groupValue: currentOption, onChanged: (value) {
              setState(() {
                currentOption=value.toString();
              });
            },),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                removeFromCart();
              }, child: const Text('İptal Et')),
            )
          ],
        ),
      ),
    );
  }
}
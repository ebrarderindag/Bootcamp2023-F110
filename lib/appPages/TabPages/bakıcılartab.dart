
// ignore: file_names
import 'package:f110/appPages/TabPages/profil.dart';
import 'package:flutter/material.dart';

class Person {
  String name;
  String occupation;
  int age;

  Person({required this.name, required this.occupation, required this.age});
}

class BakiciTabListView extends StatefulWidget {
  const BakiciTabListView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BakiciTabListView createState() => _BakiciTabListView();
}

class _BakiciTabListView extends State<BakiciTabListView> {
  List<Person> people = [];

  void addCard(String name, String occupation, int age) {
    setState(() {
      Person newPerson = Person(name: name, occupation: occupation, age: age);
      people.add(newPerson);
    });
  }

  @override
  Widget build(BuildContext context) {
    const bakiciaddbuttontext = 'Bakıcı Olmak İstiyorum';
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,iconTheme: const IconThemeData(color: Colors.green)),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),


          //bakıcı olamk istiyorum butonu


          ElevatedButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  String newName = '';
                  String newOccupation = '';
                  int newAge = 0;

                  //açılır pencere
                  return Alertdialog(newName, newOccupation, newAge, context);
                },
              );
            },
            child: const Text(bakiciaddbuttontext),
          ),


          //list view başlangıç
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      color: Colors.green[500],
                    ),
                    child: ListTile(
                      title: Text('İsim: ${people[index].name}',style: textstil(),),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Meslek: ${people[index].occupation}'),
                          Text('Yaş: ${people[index].age}'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AlertDialog Alertdialog(
      String newName, String newOccupation, int newAge, BuildContext context) {
    return AlertDialog(
      title: const Text('Bakıcı Bilgileri Ekle'),
      content: Column(
        children: [
          TextField(
            onChanged: (value) {
              newName = value;
            },
            decoration: const InputDecoration(
              labelText: 'İsim',
            ),
          ),
          TextField(
            onChanged: (value) {
              newOccupation = value;
            },
            decoration: const InputDecoration(
              labelText: 'Meslek',
            ),
          ),
          TextField(
            onChanged: (value) {
              newAge = int.tryParse(value) ?? 0;
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Yaş',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            addCard(newName, newOccupation, newAge);
            Navigator.of(context).pop();
          },
          child: const Text('Ekle'),
        ),
      ],
    );
  }
}

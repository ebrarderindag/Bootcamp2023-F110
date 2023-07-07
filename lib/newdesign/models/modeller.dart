/*import 'package:f110/newdesign/models/bak%C4%B1c%C4%B1lar.dart';
import 'package:flutter/material.dart';

class PawBuddy extends ChangeNotifier {
  //bakıcılarınlistesi
  final List<Bakicilar> _shop = [
    Bakicilar(name: 'Berke Yılmaz', yas: 19, meslek: 'Öğrenci'),
    Bakicilar(name: 'Ali Dağ', yas: 32, meslek: 'Polis'),
    Bakicilar(name: 'Ahmet Öztürk', yas: 22, meslek: 'Eğitmen'),
    Bakicilar(name: 'Ebrar Derindağ', yas: 20, meslek: 'Aşçı')
  ];

  //randevuya aldıklarım
  final List<Bakicilar> _userCart = [];
  //getters
  List<Bakicilar> get shop => _shop;

  List<Bakicilar> get cart => _userCart;

  void addToCard(Bakicilar bakici) {
    _userCart.add(bakici);
    notifyListeners();
  }
  void removeFromCard(Bakicilar bakici){
      _userCart.remove(bakici);
      notifyListeners();
    }
}
*/
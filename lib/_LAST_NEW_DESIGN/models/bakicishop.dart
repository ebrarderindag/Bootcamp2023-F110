

import 'package:f110/_LAST_NEW_DESIGN/models/bakici.dart';

import 'package:flutter/material.dart';

class BakiciShop extends ChangeNotifier{

final List<Bakici> _shop=[
  Bakici(name: 'Berke Yılmaz', meslek: 'Öğrenci', yas: 19),
  Bakici(name: 'Ali Kaya', meslek: 'Polis', yas: 37),
  Bakici(name: 'Ayşe Dağ', meslek: 'Eğitmen', yas: 26),
  Bakici(name: 'Elif Neşe', meslek: 'Müzisyen', yas: 22),
];

  List<Bakici> _userCart= [];

  List<Bakici> get bakiciShop => _shop;

  List<Bakici> get userCart => _userCart;


  void addItemToCart(Bakici bakici){
    _userCart.add(bakici);
    notifyListeners();
  }
  void removeItemFromCart(Bakici bakici){
    _userCart.remove(bakici);
    notifyListeners();
  }

}
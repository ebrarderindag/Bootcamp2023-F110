

import 'package:f110/_LAST_NEW_DESIGN/models/bakici.dart';

import 'package:flutter/material.dart';

class BakiciShop extends ChangeNotifier{

final List<Bakici> _shop=[
  Bakici(name: 'Berke Yılmaz', meslek: 'Öğrenci', yas: 19),
  Bakici(name: 'Esra Öztürk', meslek: 'Grafik tasarımcı', yas: 29),
  Bakici(name: 'Ali Kaya', meslek: 'Polis', yas: 37),
  Bakici(name: 'Ayşe Dağ', meslek: 'Eğitmen', yas: 26),
  Bakici(name: 'Hasan Aksoy', meslek: 'işletmeci', yas: 43),
  Bakici(name: 'Murat Kılıç', meslek: 'Yazılım Mühendisi', yas: 33),
  Bakici(name: 'Elif Şahin', meslek: 'Psikolog', yas: 29),
  Bakici(name: 'Mustafa Yıldız', meslek: 'Veteriner', yas: 27),
  Bakici(name: 'Elif Neşe', meslek: 'Müzisyen', yas: 22),
  Bakici(name: 'Ahmet Yılmaz', meslek: 'Doktor', yas: 36),
  Bakici(name: 'Ebru Güven', meslek: 'Editör', yas: 45),
  Bakici(name: 'Güneş Uzun', meslek: 'Dans Eğitmeni', yas: 24),
  Bakici(name: 'Tolga Kum', meslek: 'Diyetisyen', yas: 33),
  Bakici(name: 'Ayşe Yılmaz', meslek: 'Doktor', yas: 32),
  Bakici(name: 'Mehmet Demir', meslek: 'Avukat', yas: 45),
  
  
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
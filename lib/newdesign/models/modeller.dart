import 'package:f110/newdesign/models/bak%C4%B1c%C4%B1lar.dart';
import 'package:flutter/material.dart';

class PawBuddy extends ChangeNotifier {
  //bakıcılarınlistesi
  final List<Bakicilar> _cards = [Bakicilar('Berke Yılmaz', 19, 'Öğrenci'),Bakicilar('Metehan Solmaz', 23, 'Öğretmen'),Bakicilar('Ali Çağan', 35, 'Polis'),Bakicilar('Ayşe Tunca', 20, 'Dans Eğitmeni')];

  //randevuya aldıklarım
  final List<Bakicilar> _randevu = [];
  //getters
  List<Bakicilar> get cards => _cards;

  List<Bakicilar> get randevu => _randevu;

  void addtocard(Bakicilar bakici) {
    _randevu.add(bakici);
    notifyListeners();
  }
  void removeFromCard(Bakicilar bakici){
      _randevu.remove(bakici);
      notifyListeners();
    }
}

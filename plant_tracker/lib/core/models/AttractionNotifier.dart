import 'dart:developer';

import 'package:flutter/cupertino.dart';
import '../models/attraction.dart';

class AttractionNotifier with ChangeNotifier {
  List<Attraction> _attractions = [];

  List<Attraction> get attractions => _attractions;

  void addAttraction(Attraction attraction) {
    _attractions.add(attraction);
    notifyListeners();
  }

  void removeAttracton(Attraction attraction) {
    _attractions.remove(attraction);
    notifyListeners();
  }

  void printList() {
    for (int i = 0; i < _attractions.length; i++) {
      log(_attractions[i].title.toString());
    }
  }
}

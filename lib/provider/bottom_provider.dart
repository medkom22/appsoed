import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier {
  int _currentIndexBot = 0;
  int get currentIndexBot => _currentIndexBot;
  set changeIndexBot(val) {
    _currentIndexBot = val;
    notifyListeners();
  }
}

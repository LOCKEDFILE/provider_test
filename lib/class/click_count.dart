import 'package:flutter/material.dart';

class ClickCount with ChangeNotifier {
  int count = 0;
  void inc() {
    count = (count + 1) % 10;
    notifyListeners();
  }

  void dec() {
    count = (count - 1) % 10;
    notifyListeners();
  }
}

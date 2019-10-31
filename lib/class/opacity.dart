import 'dart:async';
import 'package:flutter/material.dart';

class OpacityText with ChangeNotifier {
  double opacity = 0;

  void setOpacity() {
    opacity = 1;
    notifyListeners();
    Timer(Duration(milliseconds: 500), () {
      opacity = 0;
      notifyListeners();
    });
  }
}

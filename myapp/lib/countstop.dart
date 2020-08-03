import 'package:flutter/material.dart';

class CountStop with ChangeNotifier {
  int _count = 0;
  int get countreset => _count;

  void reset() {
    _count --;
    notifyListeners();
  }
}
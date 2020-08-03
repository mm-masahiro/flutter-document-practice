import 'package:flutter/material.dart';

class CountStop with ChangeNotifier {
  int _count;
  int get countreset => _count;

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
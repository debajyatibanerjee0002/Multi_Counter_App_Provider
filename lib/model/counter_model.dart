import 'package:flutter/widgets.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get getCount => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    if (_count > 0) _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}

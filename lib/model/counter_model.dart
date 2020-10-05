import 'package:flutter/widgets.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int _countOne = 0;
  int _countTwo = 0;
  int get getCount => _count;
  int get getCountOne => _countOne;
  int get getCountTwo => _countTwo;

  void increment() {
    _count++;
    notifyListeners();
  }

  void incrementOne() {
    _countOne++;
    notifyListeners();
  }

  void incrementTwo() {
    _countTwo++;
    notifyListeners();
  }

  void decrement() {
    if (_count > 0) _count--;
    notifyListeners();
  }

  void decrementOne() {
    if (_countOne > 0) _countOne--;
    notifyListeners();
  }

  void decrementTwo() {
    if (_countTwo > 0) _countTwo--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    _countOne = 0;
    _countTwo = 0;
    notifyListeners();
  }
}

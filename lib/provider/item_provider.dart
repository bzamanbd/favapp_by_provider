import 'package:flutter/material.dart';

class ItemProvider with ChangeNotifier {
  final List<int> _selectedItems = [];
  List<int> get selectedItems => _selectedItems;

  void addToFav(int value) {
    _selectedItems.add(value);
    notifyListeners();
  }

  void removeFromFav(int value) {
    _selectedItems.remove(value);
    notifyListeners();
  }
}

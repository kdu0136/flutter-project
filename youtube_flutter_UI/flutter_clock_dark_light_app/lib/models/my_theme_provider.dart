
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThemeModel extends ChangeNotifier {
  bool _isLightTheme = ThemeMode.system == ThemeMode.light;

  void changeTheme() {
    _isLightTheme = !_isLightTheme;
    notifyListeners();
  }
  bool get isLightTheme => _isLightTheme;
}
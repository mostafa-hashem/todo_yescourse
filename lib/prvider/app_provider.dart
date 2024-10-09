import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.system;

  void changeTheme(ThemeMode newTheme) {
    theme = newTheme;
    notifyListeners();
  }
}

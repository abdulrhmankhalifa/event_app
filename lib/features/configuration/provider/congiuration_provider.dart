import 'package:flutter/material.dart';

class ConfigurationProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    themeMode = newTheme;
    notifyListeners();
  }

  bool get isDark => themeMode == ThemeMode.dark;

  String locale = 'en';

  void changeLanguage(String newLocale) {
    locale = newLocale;
    notifyListeners();
  }

  bool get isEn => locale == 'en';
}

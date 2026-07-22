import 'package:evently/core/service/shared_prefrences_service.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_constants.dart';

class ConfigurationProvider extends ChangeNotifier {
  ThemeMode themeMode =
      SharedPrefService.getString(AppConstants.themeModeKey) == 'dark'
      ? ThemeMode.dark
      : ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    themeMode = newTheme;
    SharedPrefService.setString(AppConstants.themeModeKey, newTheme.name);
    notifyListeners();
  }

  bool get isDark => themeMode == ThemeMode.dark;

  String locale = SharedPrefService.getString(AppConstants.localeKey) ?? 'en';

  void changeLanguage(String newLocale) {
    locale = newLocale;
    SharedPrefService.setString(AppConstants.localeKey, locale);
    notifyListeners();
  }

  bool get isEn => locale == 'en';
}

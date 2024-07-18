import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController with ChangeNotifier {
  Locale? _appLocale;
  Locale? get appLocale => _appLocale;

  LanguageController() {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? languageCode = sp.getString('language');
    if (languageCode != null) {
      _appLocale = Locale(languageCode);
      notifyListeners();
    }
  }

  Future<void> changeLanguage(Locale type) async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    if (type == Locale('en')) {
      _appLocale = Locale('en');
      await sp.setString('language', 'en');
    } else {
      _appLocale = Locale('ar');
      await sp.setString('language', 'ar');
    }
    notifyListeners();
  }
}

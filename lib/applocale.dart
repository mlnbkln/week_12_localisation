import 'package:flutter/cupertino.dart';

class AppLocale extends ChangeNotifier {
  Locale ? _locale;

  Locale get locale => _locale ?? Locale('en');

  void changeLocale(Locale newLocale) {
    if(newLocale == Locale('ru')) {
      _locale = Locale('ru');
    } else {
      _locale = Locale('en');
    }
    notifyListeners();
  }
}
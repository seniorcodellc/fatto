import 'package:flutter/cupertino.dart';

class AppLocalizationsConstants {
  static final AppLocalizationsConstants _instance = AppLocalizationsConstants._internal();
  factory AppLocalizationsConstants() => _instance;
  AppLocalizationsConstants._internal() {
    enLocale = Locale(enLanguage, enRegion);
    arLocale = Locale(arLanguage, arRegion);
    supportedLocales = [
      enLocale,
      arLocale,
    ];
  }

  final String enLanguage = 'en';
  final String arLanguage = 'ar';
  final String enRegion = 'US';
  final String arRegion = 'EG';
  final String path = "assets/translations";
  late final Locale enLocale;
  late final Locale arLocale;
  late final List<Locale> supportedLocales;
}

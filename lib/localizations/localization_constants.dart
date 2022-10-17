import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import 'demo_localizations.dart';

List<String> listLanguage = [
  'English', //Required
  'Arabic',
  'French',
  'Hindi',
  'Spanish',
];

List<String> kLanguageSupport = [
  'en', //Required
  'ar',
  'fr',
  'hi',
  'es',
];

List<Locale> kLocaleSupport = [
  Locale('en', 'EN'), //Required
  Locale('fr', 'FR'),
  Locale('ar', 'AR'),
  Locale('hi', 'IN'),
  Locale('es', 'ES'),
];

void changeLanguage(String language, context) {
  Locale _temp;
  switch (language) {
    case 'English': //Required
      _temp = Locale('en', 'US');
      Get.updateLocale(_temp);
      break;
    case 'French':
      _temp = Locale('fr', 'FR');
      Get.updateLocale(_temp);
      break;
    case 'Arabic':
      _temp = Locale('ar', 'AR');
      Get.updateLocale(_temp);
      break;
    case 'Hindi':
      _temp = Locale('hi', 'IN');
      Get.updateLocale(_temp);
      break;
    case 'Spanish':
      _temp = Locale('es', 'ES');
      Get.updateLocale(_temp);
      break;

    default:
      _temp = Locale('en', 'US'); //Required
      Get.updateLocale(_temp);
  }

  MyApp.setLocale(context, _temp);
}

///DO NOT CHANGE THIS FUNCTION BELOW

String getTranslated(BuildContext context, String key) {
  return DemoLocalization.of(context).getTranslateValue(key);
}

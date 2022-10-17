import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'localization_constants.dart';

class DemoLocalization {
  final Locale locale;

  DemoLocalization(this.locale);

  static DemoLocalization of(BuildContext context) {
    return Localizations.of<DemoLocalization>(context, DemoLocalization);
  }

  Map<String, String> _localizedValues;

  Future load() async {
    String jsonStringValues = await rootBundle
        .loadString('assets/languages/${locale.languageCode}.json');

    Map<String, dynamic> mappedJson = json.decode(jsonStringValues);

    _localizedValues =
        mappedJson.map((key, value) => MapEntry(key, value.toString()));
  }

  String getTranslateValue(String key) {
    return _localizedValues[key];
  }

  static const LocalizationsDelegate<DemoLocalization> delegate =
      _DemoLocalizationDelegate();
}

class _DemoLocalizationDelegate
    extends LocalizationsDelegate<DemoLocalization> {
  const _DemoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return kLanguageSupport.contains(locale.languageCode);
  }

  @override
  Future<DemoLocalization> load(Locale locale) async {
    DemoLocalization localization = DemoLocalization(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(_DemoLocalizationDelegate old) {
    return false;
  }
}

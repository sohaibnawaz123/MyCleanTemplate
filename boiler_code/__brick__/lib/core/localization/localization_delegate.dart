import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/core/localization/localization.dart';

class LocalizationDelegate extends LocalizationsDelegate<Localization> {
  const LocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<Localization> load(Locale locale) async {
    final appLocalizations = Localization(locale);
    await appLocalizations.load();
    return appLocalizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<Localization> old) => false;
}

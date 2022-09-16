import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/constants/cache_keys.dart';
import 'package:weather_app/core/constants/locales.dart';
import 'package:weather_app/core/data/datasources/cache_helper.dart';
import 'package:weather_app/di/injection_container.dart';

import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.initial());

  Locale locale = arabicLocale;
  bool isDark = false;

  Future<void> getCurrentLocale() async {
    emit(const ThemeState.loading());
    await getIt<CacheHelper>().has(CacheKeys.locale).then((hasToken) async {
      if (hasToken) {
        await getIt<CacheHelper>().get(CacheKeys.locale).then((value) async {
          locale = Locale.fromSubtags(
              languageCode: value.split('_').first,
              countryCode: value.split('_').last);
        });
      } else {
        final String deviceLocale = Platform.localeName;
        if (deviceLocale.contains("ar")) {
          locale = arabicLocale;
        } else {
          locale = englishLocale;
        }
        await getIt<CacheHelper>().put(CacheKeys.locale, locale.toString());
      }
    });
    emit(const ThemeState.changeState());
  }

  Future<void> changeLocale(Locale lc) async {
    emit(const ThemeState.loading());
    locale = lc;
    await getIt<CacheHelper>().put(CacheKeys.locale, locale.toString());
    emit(const ThemeState.changeState());
  }

}

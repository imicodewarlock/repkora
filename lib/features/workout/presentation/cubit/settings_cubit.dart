import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsState {
  final Locale locale;
  final bool soundEnabled;

  SettingsState({required this.locale, required this.soundEnabled});
}

class SettingsCubit extends Cubit<SettingsState> {
  final SharedPreferences prefs;

  SettingsCubit(this.prefs)
      : super(SettingsState(
    locale: Locale(prefs.getString('language_code') ?? 'en'),
    soundEnabled: prefs.getBool('sound_enabled') ?? true,
  ));

  Future<void> changeLanguage(String languageCode) async {
    await prefs.setString('language_code', languageCode);
    emit(SettingsState(
      locale: Locale(languageCode),
      soundEnabled: state.soundEnabled,
    ));
  }

  Future<void> toggleSound(bool enabled) async {
    await prefs.setBool('sound_enabled', enabled);
    emit(SettingsState(
      locale: state.locale,
      soundEnabled: enabled,
    ));
  }
}
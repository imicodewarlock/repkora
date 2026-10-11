import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'app_title': 'Repkora',
      'workouts': 'Workouts',
      'statistics': 'Statistics',
      'settings': 'Settings',
      'no_workouts': 'No workouts logged yet. Add one!',
      'add_workout': 'Add Workout',
      'rest_time': 'Rest Period',
      'complete_set': 'Complete Set & Rest',
      'audio_alerts': 'Audio Alerts (Beep)',
      'language': 'Language',
      'app_version': 'App Version - Pro Gym Edition',
    },
    'ar': {
      'app_title': 'ريب فولت',
      'workouts': 'التمارين',
      'statistics': 'الإحصائيات',
      'settings': 'الإعدادات',
      'no_workouts': 'لا توجد تمارين مسجلة حتى الآن. أضف تمريناً!',
      'add_workout': 'إضافة تمرين',
      'rest_time': 'فترة الراحة',
      'complete_set': 'إنهاء المجموعة والراحة',
      'audio_alerts': 'التنبيهات الصوتية',
      'language': 'اللغة',
      'app_version': 'إصدار التطبيق - النسخة الاحترافية',
    },
  };

  String translate(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? _localizedValues['en']![key]!;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
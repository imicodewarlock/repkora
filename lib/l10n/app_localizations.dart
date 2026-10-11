import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Repkora'**
  String get appTitle;

  /// No description provided for @workouts.
  ///
  /// In en, this message translates to:
  /// **'Workouts'**
  String get workouts;

  /// No description provided for @statistics.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statistics;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @noWorkouts.
  ///
  /// In en, this message translates to:
  /// **'No workouts logged yet. Add one!'**
  String get noWorkouts;

  /// No description provided for @addWorkout.
  ///
  /// In en, this message translates to:
  /// **'Add Workout'**
  String get addWorkout;

  /// No description provided for @saveWorkout.
  ///
  /// In en, this message translates to:
  /// **'Save Workout'**
  String get saveWorkout;

  /// No description provided for @workoutName.
  ///
  /// In en, this message translates to:
  /// **'Workout Name'**
  String get workoutName;

  /// No description provided for @workoutNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Dumbbell Press'**
  String get workoutNameHint;

  /// No description provided for @targetSets.
  ///
  /// In en, this message translates to:
  /// **'Target Sets'**
  String get targetSets;

  /// No description provided for @targetReps.
  ///
  /// In en, this message translates to:
  /// **'Target Reps'**
  String get targetReps;

  /// No description provided for @weightKg.
  ///
  /// In en, this message translates to:
  /// **'Weight (kg)'**
  String get weightKg;

  /// No description provided for @restSec.
  ///
  /// In en, this message translates to:
  /// **'Rest (sec)'**
  String get restSec;

  /// No description provided for @pleaseEnterName.
  ///
  /// In en, this message translates to:
  /// **'Please enter a workout name'**
  String get pleaseEnterName;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get requiredField;

  /// No description provided for @restPeriod.
  ///
  /// In en, this message translates to:
  /// **'Rest Period ⏱️'**
  String get restPeriod;

  /// No description provided for @completeSet.
  ///
  /// In en, this message translates to:
  /// **'Complete Set & Rest'**
  String get completeSet;

  /// No description provided for @getReady.
  ///
  /// In en, this message translates to:
  /// **'Get ready for the next set!'**
  String get getReady;

  /// No description provided for @setCount.
  ///
  /// In en, this message translates to:
  /// **'Set {current} of {total}'**
  String setCount(int current, int total);

  /// No description provided for @sessionTitle.
  ///
  /// In en, this message translates to:
  /// **'Session: {name}'**
  String sessionTitle(String name);

  /// No description provided for @audioAlerts.
  ///
  /// In en, this message translates to:
  /// **'Audio Alerts (Beep)'**
  String get audioAlerts;

  /// No description provided for @audioAlertsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Play sound on rest timer events'**
  String get audioAlertsSubtitle;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appVersion;

  /// No description provided for @appVersionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'v1.1.0 - Pro Gym Edition'**
  String get appVersionSubtitle;

  /// No description provided for @weightProgress.
  ///
  /// In en, this message translates to:
  /// **'Weight Progress Over Time'**
  String get weightProgress;

  /// No description provided for @noDataStats.
  ///
  /// In en, this message translates to:
  /// **'No data available for statistics yet.'**
  String get noDataStats;

  /// No description provided for @setsXreps.
  ///
  /// In en, this message translates to:
  /// **'{sets} Sets x {reps} Reps @ {weight} kg'**
  String setsXreps(int sets, int reps, double weight);

  /// No description provided for @restDuration.
  ///
  /// In en, this message translates to:
  /// **'Rest: {seconds}s'**
  String restDuration(int seconds);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'es', 'fr', 'it'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

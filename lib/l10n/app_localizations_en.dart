// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Repkora';

  @override
  String get workouts => 'Workouts';

  @override
  String get statistics => 'Statistics';

  @override
  String get settings => 'Settings';

  @override
  String get noWorkouts => 'No workouts logged yet. Add one!';

  @override
  String get addWorkout => 'Add Workout';

  @override
  String get saveWorkout => 'Save Workout';

  @override
  String get workoutName => 'Workout Name';

  @override
  String get workoutNameHint => 'e.g., Dumbbell Press';

  @override
  String get targetSets => 'Target Sets';

  @override
  String get targetReps => 'Target Reps';

  @override
  String get weightKg => 'Weight (kg)';

  @override
  String get restSec => 'Rest (sec)';

  @override
  String get pleaseEnterName => 'Please enter a workout name';

  @override
  String get requiredField => 'Required';

  @override
  String get restPeriod => 'Rest Period ⏱️';

  @override
  String get completeSet => 'Complete Set & Rest';

  @override
  String get getReady => 'Get ready for the next set!';

  @override
  String setCount(int current, int total) {
    return 'Set $current of $total';
  }

  @override
  String sessionTitle(String name) {
    return 'Session: $name';
  }

  @override
  String get audioAlerts => 'Audio Alerts (Beep)';

  @override
  String get audioAlertsSubtitle => 'Play sound on rest timer events';

  @override
  String get language => 'Language';

  @override
  String get appVersion => 'App Version';

  @override
  String get appVersionSubtitle => 'v1.1.0 - Pro Gym Edition';

  @override
  String get weightProgress => 'Weight Progress Over Time';

  @override
  String get noDataStats => 'No data available for statistics yet.';

  @override
  String setsXreps(int sets, int reps, double weight) {
    return '$sets Sets x $reps Reps @ $weight kg';
  }

  @override
  String restDuration(int seconds) {
    return 'Rest: ${seconds}s';
  }
}

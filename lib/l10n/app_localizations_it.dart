// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Repkora';

  @override
  String get workouts => 'Allenamenti';

  @override
  String get statistics => 'Statistiche';

  @override
  String get settings => 'Impostazioni';

  @override
  String get noWorkouts => 'Nessun allenamento registrato. Aggiungine uno!';

  @override
  String get addWorkout => 'Aggiungi allenamento';

  @override
  String get saveWorkout => 'Salva allenamento';

  @override
  String get workoutName => 'Nome esercizio';

  @override
  String get workoutNameHint => 'es., Spinte con manubri';

  @override
  String get targetSets => 'Serie obiettivo';

  @override
  String get targetReps => 'Ripetizioni obiettivo';

  @override
  String get weightKg => 'Peso (kg)';

  @override
  String get restSec => 'Riposo (sec)';

  @override
  String get pleaseEnterName => 'Inserisci un nome per l\'esercizio';

  @override
  String get requiredField => 'Obbligatorio';

  @override
  String get restPeriod => 'Periodo di riposo ⏱️';

  @override
  String get completeSet => 'Completa serie e riposa';

  @override
  String get getReady => 'Preparati per la prossima serie!';

  @override
  String setCount(int current, int total) {
    return 'Serie $current di $total';
  }

  @override
  String sessionTitle(String name) {
    return 'Sessione: $name';
  }

  @override
  String get audioAlerts => 'Avvisi audio';

  @override
  String get audioAlertsSubtitle => 'Riproduci suono per i timer di riposo';

  @override
  String get language => 'Lingua';

  @override
  String get appVersion => 'Versione app';

  @override
  String get appVersionSubtitle => 'v1.1.0 - Edizione Pro Gym';

  @override
  String get weightProgress => 'Progresso del peso nel tempo';

  @override
  String get noDataStats => 'Nessun dato disponibile per le statistiche.';

  @override
  String setsXreps(int sets, int reps, double weight) {
    return '$sets Serie x $reps Ripetizioni @ $weight kg';
  }

  @override
  String restDuration(int seconds) {
    return 'Riposo: ${seconds}s';
  }
}

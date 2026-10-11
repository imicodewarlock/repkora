// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Repkora';

  @override
  String get workouts => 'Entraînements';

  @override
  String get statistics => 'Statistiques';

  @override
  String get settings => 'Paramètres';

  @override
  String get noWorkouts => 'Aucun entraînement enregistré. Ajoutez-en un!';

  @override
  String get addWorkout => 'Ajouter un entraînement';

  @override
  String get saveWorkout => 'Enregistrer l\'entraînement';

  @override
  String get workoutName => 'Nom de l\'exercice';

  @override
  String get workoutNameHint => 'ex: Développé haltères';

  @override
  String get targetSets => 'Séries cibles';

  @override
  String get targetReps => 'Répétitions cibles';

  @override
  String get weightKg => 'Poids (kg)';

  @override
  String get restSec => 'Repos (sec)';

  @override
  String get pleaseEnterName => 'Veuillez entrer un nom d\'exercice';

  @override
  String get requiredField => 'Champ requis';

  @override
  String get restPeriod => 'Période de repos ⏱️';

  @override
  String get completeSet => 'Terminer la série et reposer';

  @override
  String get getReady => 'Préparez-vous pour la série suivante!';

  @override
  String setCount(int current, int total) {
    return 'Série $current sur $total';
  }

  @override
  String sessionTitle(String name) {
    return 'Session: $name';
  }

  @override
  String get audioAlerts => 'Alertes sonores';

  @override
  String get audioAlertsSubtitle =>
      'Jouer un son lors des chronomètres de repos';

  @override
  String get language => 'Langue';

  @override
  String get appVersion => 'Version de l\'application';

  @override
  String get appVersionSubtitle => 'v1.1.0 - Édition Pro Gym';

  @override
  String get weightProgress => 'Évolution du poids au fil du temps';

  @override
  String get noDataStats => 'Aucune donnée disponible pour les statistiques.';

  @override
  String setsXreps(int sets, int reps, double weight) {
    return '$sets Séries x $reps Reps @ $weight kg';
  }

  @override
  String restDuration(int seconds) {
    return 'Repos: ${seconds}s';
  }
}

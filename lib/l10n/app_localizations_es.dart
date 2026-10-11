// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Repkora';

  @override
  String get workouts => 'Entrenamientos';

  @override
  String get statistics => 'Estadísticas';

  @override
  String get settings => 'Ajustes';

  @override
  String get noWorkouts => '¡No hay entrenamientos registrados. Añade uno!';

  @override
  String get addWorkout => 'Añadir entrenamiento';

  @override
  String get saveWorkout => 'Guardar entrenamiento';

  @override
  String get workoutName => 'Nombre del ejercicio';

  @override
  String get workoutNameHint => 'ej., Press con mancuernas';

  @override
  String get targetSets => 'Series objetivo';

  @override
  String get targetReps => 'Repeticiones objetivo';

  @override
  String get weightKg => 'Peso (kg)';

  @override
  String get restSec => 'Descanso (seg)';

  @override
  String get pleaseEnterName => 'Por favor ingresa un nombre';

  @override
  String get requiredField => 'Requerido';

  @override
  String get restPeriod => 'Tiempo de descanso ⏱️';

  @override
  String get completeSet => 'Completar serie y descansar';

  @override
  String get getReady => '¡Prepárate para la siguiente serie!';

  @override
  String setCount(int current, int total) {
    return 'Serie $current de $total';
  }

  @override
  String sessionTitle(String name) {
    return 'Sesión: $name';
  }

  @override
  String get audioAlerts => 'Alertas de audio';

  @override
  String get audioAlertsSubtitle => 'Reproducir sonido en los descansos';

  @override
  String get language => 'Idioma';

  @override
  String get appVersion => 'Versión de la aplicación';

  @override
  String get appVersionSubtitle => 'v1.1.0 - Edición Pro Gym';

  @override
  String get weightProgress => 'Progreso de peso con el tiempo';

  @override
  String get noDataStats => 'No hay datos disponibles para estadísticas.';

  @override
  String setsXreps(int sets, int reps, double weight) {
    return '$sets Series x $reps Reps @ $weight kg';
  }

  @override
  String restDuration(int seconds) {
    return 'Descanso: ${seconds}s';
  }
}

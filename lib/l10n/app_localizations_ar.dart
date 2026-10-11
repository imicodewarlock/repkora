// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'ريب فولت';

  @override
  String get workouts => 'التمارين';

  @override
  String get statistics => 'الإحصائيات';

  @override
  String get settings => 'الإعدادات';

  @override
  String get noWorkouts => 'لا توجد تمارين مسجلة حتى الآن. أضف تمريناً!';

  @override
  String get addWorkout => 'إضافة تمرين';

  @override
  String get saveWorkout => 'حفظ التمرين';

  @override
  String get workoutName => 'اسم التمرين';

  @override
  String get workoutNameHint => 'مثال: تجميع بالدمبل';

  @override
  String get targetSets => 'المجموعات المستهدفة';

  @override
  String get targetReps => 'التكرارات المستهدفة';

  @override
  String get weightKg => 'الوزن (كجم)';

  @override
  String get restSec => 'الراحة (ثانية)';

  @override
  String get pleaseEnterName => 'يرجى إدخال اسم التمرين';

  @override
  String get requiredField => 'مطلوب';

  @override
  String get restPeriod => 'فترة الراحة ⏱️';

  @override
  String get completeSet => 'إنهاء المجموعة والراحة';

  @override
  String get getReady => 'استعد للمجموعة القادمة!';

  @override
  String setCount(int current, int total) {
    return 'المجموعة $current من $total';
  }

  @override
  String sessionTitle(String name) {
    return 'جلسة: $name';
  }

  @override
  String get audioAlerts => 'التنبيهات الصوتية';

  @override
  String get audioAlertsSubtitle => 'تشغيل صوت عند بدء وانتهاء وقت الراحة';

  @override
  String get language => 'اللغة';

  @override
  String get appVersion => 'إصدار التطبيق';

  @override
  String get appVersionSubtitle => 'v1.1.0 - النسخة الاحترافية';

  @override
  String get weightProgress => 'تطور الأوزان عبر الوقت';

  @override
  String get noDataStats => 'لا توجد بيانات متاحة للإحصائيات حتى الآن.';

  @override
  String setsXreps(int sets, int reps, double weight) {
    return '$sets مجموعات × $reps تكرارات @ $weight كجم';
  }

  @override
  String restDuration(int seconds) {
    return 'الراحة: $seconds ثانية';
  }
}

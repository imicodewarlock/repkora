import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkora/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/constants/app_theme.dart';
import 'features/splash/presentation/splash_screen.dart';
import 'features/workout/data/workout_model.dart';
import 'features/workout/presentation/cubit/settings_cubit.dart';
import 'features/workout/presentation/cubit/workout_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(WorkoutModelAdapter());
  final workoutBox = await Hive.openBox<WorkoutModel>('workouts_box');
  final prefs = await SharedPreferences.getInstance();

  runApp(MyApp(workoutBox: workoutBox, prefs: prefs));
}

class MyApp extends StatelessWidget {
  final Box<WorkoutModel> workoutBox;
  final SharedPreferences prefs;

  const MyApp({super.key, required this.workoutBox, required this.prefs});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => WorkoutCubit(workoutBox)..loadWorkouts()),
        BlocProvider(create: (context) => SettingsCubit(prefs)),
      ],
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, settingsState) {
          return MaterialApp(
            title: 'Repkora',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.darkTheme,
            locale: settingsState.locale,
            supportedLocales: const [
              Locale('en', ''),
              Locale('ar', ''),
              Locale('fr', ''),
              Locale('es', ''),
              Locale('it', ''),
            ],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: SplashScreen(workoutBox: workoutBox),
          );
        },
      ),
    );
  }
}
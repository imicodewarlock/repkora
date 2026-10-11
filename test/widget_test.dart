import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:repkora/main.dart';
import 'package:repkora/features/workout/data/workout_model.dart';

void main() {
  setUpAll(() async {
    // Initialize test bindings and set up temporary Hive environment
    TestWidgetsFlutterBinding.ensureInitialized();
    Hive.init('./test_hive_db');
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(WorkoutModelAdapter());
    }
  });

  tearDownAll(() async {
    // Clean up temporary local storage after test completion
    await Hive.deleteFromDisk();
  });

  testWidgets('Repkora Smoke & Initial Render Test', (WidgetTester tester) async {
    // Mock initial SharedPreferences values and open test Hive box
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final workoutBox = await Hive.openBox<WorkoutModel>('test_workouts_box');

    // Render the root application widget inside test environment
    await tester.pumpWidget(MyApp(workoutBox: workoutBox, prefs: prefs));

    // Verify initial rendering of Splash screen elements
    expect(find.text('Repkora'), findsOneWidget);
    expect(find.byIcon(Icons.fitness_center), findsOneWidget);

    // Wait for the splash screen timer (2 seconds) to navigate to the main screen
    await tester.pumpAndSettle(const Duration(seconds: 2));

    // Close the mock test box
    await workoutBox.close();
  });
}
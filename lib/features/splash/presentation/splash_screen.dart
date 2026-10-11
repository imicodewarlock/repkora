import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../main_navigation/presentation/main_nav_screen.dart';
import '../../workout/data/workout_model.dart';

class SplashScreen extends StatefulWidget {
  final Box<WorkoutModel> workoutBox;
  const SplashScreen({super.key, required this.workoutBox});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const MainNavScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fitness_center, size: 80, color: Colors.amber),
            SizedBox(height: 16),
            Text(
              'Repkora',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.amber),
            ),
            SizedBox(height: 8),
            Text('Track Your Strength, Master Your Sets', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
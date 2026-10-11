import '../../data/workout_model.dart';

abstract class WorkoutState {}

class WorkoutInitial extends WorkoutState {}

class WorkoutLoaded extends WorkoutState {
  final List<WorkoutModel> workouts;
  final int activeSet;
  final int restTimer;
  final bool isResting;
  final bool isSessionActive;

  WorkoutLoaded({
    required this.workouts,
    this.activeSet = 1,
    this.restTimer = 0,
    this.isResting = false,
    this.isSessionActive = false,
  });
}
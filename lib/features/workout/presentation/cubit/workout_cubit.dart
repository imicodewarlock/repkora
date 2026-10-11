import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../../../core/services/audio_service.dart';
import '../../data/workout_model.dart';
import 'workout_state.dart';

class WorkoutCubit extends Cubit<WorkoutState> {
  final Box<WorkoutModel> workoutBox;
  final AudioService audioService = AudioService();
  Timer? _timer;

  WorkoutCubit(this.workoutBox) : super(WorkoutInitial());

  void loadWorkouts() {
    final workouts = workoutBox.values.toList();
    workouts.sort((a, b) => b.date.compareTo(a.date));
    emit(WorkoutLoaded(workouts: workouts));
  }

  Future<void> addWorkout(WorkoutModel workout) async {
    await workoutBox.add(workout);
    loadWorkouts();
  }

  Future<void> deleteWorkout(int index) async {
    await workoutBox.deleteAt(index);
    loadWorkouts();
  }

  void startWorkoutSession(WorkoutModel workout) {
    emit(WorkoutLoaded(
      workouts: (state as WorkoutLoaded).workouts,
      activeSet: 1,
      isSessionActive: true,
      isResting: false,
    ));
  }

  void completeSet(int maxSets, int restDuration) {
    if (state is WorkoutLoaded) {
      final currentState = state as WorkoutLoaded;
      if (currentState.activeSet < maxSets) {
        _startRestTimer(maxSets, restDuration, currentState.activeSet + 1);
      } else {
        audioService.playAlertSound();
        emit(WorkoutLoaded(
          workouts: currentState.workouts,
          isSessionActive: false,
          isResting: false,
        ));
      }
    }
  }

  void _startRestTimer(int maxSets, int duration, int nextSet) {
    _timer?.cancel();
    int remaining = duration;
    audioService.playAlertSound();

    if (state is WorkoutLoaded) {
      final currentState = state as WorkoutLoaded;
      emit(WorkoutLoaded(
        workouts: currentState.workouts,
        activeSet: currentState.activeSet,
        restTimer: remaining,
        isResting: true,
        isSessionActive: true,
      ));

      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (remaining > 0) {
          remaining--;
          emit(WorkoutLoaded(
            workouts: currentState.workouts,
            activeSet: currentState.activeSet,
            restTimer: remaining,
            isResting: true,
            isSessionActive: true,
          ));
        } else {
          timer.cancel();
          audioService.playAlertSound();
          emit(WorkoutLoaded(
            workouts: currentState.workouts,
            activeSet: nextSet,
            restTimer: 0,
            isResting: false,
            isSessionActive: true,
          ));
        }
      });
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkora/l10n/app_localizations.dart';
import '../../data/workout_model.dart';
import '../cubit/workout_cubit.dart';
import '../cubit/workout_state.dart';

class ActiveWorkoutScreen extends StatelessWidget {
  final WorkoutModel workout;

  const ActiveWorkoutScreen({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    BlocProvider.of<WorkoutCubit>(context).startWorkoutSession(workout);

    return Scaffold(
      appBar: AppBar(title: Text('Session: ${workout.name}')),
      body: BlocBuilder<WorkoutCubit, WorkoutState>(
        builder: (context, state) {
          if (state is WorkoutLoaded) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.isResting ? l10n.restPeriod : 'Set ${state.activeSet} of ${workout.targetSets}',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: state.isResting ? Colors.orangeAccent : Colors.amber,
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (state.isResting) ...[
                    Text(
                      '${state.restTimer}s',
                      style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(l10n.getReady, style: const TextStyle(color: Colors.grey)),
                  ] else ...[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('Target Reps: ${workout.targetReps}', style: const TextStyle(fontSize: 20)),
                            const SizedBox(height: 10),
                            Text('Weight: ${workout.weight} kg', style: const TextStyle(fontSize: 20, color: Colors.amber)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(double.infinity, 55),
                      ),
                      onPressed: () {
                        context.read<WorkoutCubit>().completeSet(workout.targetSets, workout.restSeconds);
                      },
                      child: Text(l10n.completeSet, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
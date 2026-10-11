import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkora/l10n/app_localizations.dart';
import '../cubit/workout_cubit.dart';
import '../cubit/workout_state.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.statistics)),
      body: BlocBuilder<WorkoutCubit, WorkoutState>(
        builder: (context, state) {
          if (state is WorkoutLoaded && state.workouts.isNotEmpty) {
            final spots = state.workouts.asMap().entries.map((e) {
              return FlSpot(e.key.toDouble(), e.value.weight);
            }).toList();

            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.weightProgress,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: LineChart(
                      LineChartData(
                        gridData: const FlGridData(show: true),
                        titlesData: const FlTitlesData(show: true),
                        borderData: FlBorderData(show: true),
                        lineBarsData: [
                          LineChartBarData(
                            spots: spots,
                            isCurved: true,
                            color: Colors.amber,
                            barWidth: 4,
                            dotData: const FlDotData(show: true),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return Center(child: Text(l10n.noDataStats, style: const TextStyle(color: Colors.grey)));
        },
      ),
    );
  }
}
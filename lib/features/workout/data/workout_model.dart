import 'package:hive/hive.dart';

part 'workout_model.g.dart';

@HiveType(typeId: 0)
class WorkoutModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final int targetSets;

  @HiveField(3)
  final int targetReps;

  @HiveField(4)
  final double weight;

  @HiveField(5)
  final int restSeconds;

  @HiveField(6)
  final DateTime date;

  WorkoutModel({
    required this.id,
    required this.name,
    required this.targetSets,
    required this.targetReps,
    required this.weight,
    required this.restSeconds,
    required this.date,
  });
}
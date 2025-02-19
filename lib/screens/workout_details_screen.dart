import 'package:flutter/material.dart';

class WorkoutDetailsScreen extends StatelessWidget {
  const WorkoutDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as String;

    // Mock workout data
    final workouts = [
      {'name': '$category Workout 1', 'duration': '20 min'},
      {'name': '$category Workout 2', 'duration': '30 min'},
      {'name': '$category Workout 3', 'duration': '45 min'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Workouts'),
      ),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final workout = workouts[index];
          return ListTile(
            title: Text(workout['name']!),
            subtitle: Text(workout['duration']!),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // TODO: Implement workout start functionality
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Starting ${workout['name']}')),
              );
            },
          );
        },
      ),
    );
  }
}


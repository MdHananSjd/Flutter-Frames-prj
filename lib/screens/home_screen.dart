import 'package:flutter/material.dart';
import '../widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        childAspectRatio: 1,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          CategoryCard(
            title: 'Cardio',
            icon: Icons.directions_run,
            color: Colors.red,
            onTap: () {
              Navigator.pushNamed(context, '/workout_details', arguments: 'Cardio');
            },
          ),
          CategoryCard(
            title: 'Strength',
            icon: Icons.fitness_center,
            color: Colors.blue,
            onTap: () {
              Navigator.pushNamed(context, '/workout_details', arguments: 'Strength');
            },
          ),
          CategoryCard(
            title: 'Yoga',
            icon: Icons.self_improvement,
            color: Colors.green,
            onTap: () {
              Navigator.pushNamed(context, '/workout_details', arguments: 'Yoga');
            },
          ),
          CategoryCard(
            title: 'Stretching',
            icon: Icons.accessibility_new,
            color: Colors.orange,
            onTap: () {
              Navigator.pushNamed(context, '/workout_details', arguments: 'Stretching');
            },
          ),
        ],
      ),
    );
  }
}


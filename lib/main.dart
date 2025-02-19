import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/workout_details_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
      routes: {
        '/workout_details': (context) => const WorkoutDetailsScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}


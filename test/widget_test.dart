import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  testWidgets('Fitness app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app title is displayed
    expect(find.text('Fitness App'), findsOneWidget);

    // Verify that we have four category cards
    expect(find.byType(Card), findsNWidgets(4));

    // Verify that we have the correct category titles
    expect(find.text('Cardio'), findsOneWidget);
    expect(find.text('Strength'), findsOneWidget);
    expect(find.text('Yoga'), findsOneWidget);
    expect(find.text('Stretching'), findsOneWidget);

    // Tap the 'Cardio' card and trigger a frame.
    await tester.tap(find.text('Cardio'));
    await tester.pumpAndSettle();

    // Verify that we've navigated to the Workout Details screen
    expect(find.text('Cardio Workouts'), findsOneWidget);

    // Navigate back to the home screen
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();

    // Tap the profile icon
    await tester.tap(find.byIcon(Icons.person));
    await tester.pumpAndSettle();

    // Verify that we've navigated to the Profile screen
    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
  });
}


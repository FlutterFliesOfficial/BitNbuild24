import 'package:flutter/material.dart';
import 'package:hotstevie/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

// implement onboarding screen
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
    );
  }
}

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to MyApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/images/onboarding_image.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle login button press
              },
              child: Text('Login'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Handle signup button press
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

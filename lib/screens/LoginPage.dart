import 'package:flutter/material.dart';
import 'package:hotstevie/screens/AddNewObj.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Perform login with username and password
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Perform Google login
              },
              child: const Text('Login with Google'),
            ),
            ElevatedButton(
              onPressed: () {
                // NAVIGATE TO OBJ
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddNewObjScreen()),
                );
              },
              child: const Text('TO ADD OBJ'),
            ),
          ],
        ),
      ),
    );
  }
}

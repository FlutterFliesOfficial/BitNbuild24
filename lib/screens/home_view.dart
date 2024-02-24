import 'package:flutter/material.dart';
import 'package:hotstevie/screens/custom_icons.dart';
import 'package:hotstevie/screens/home_body.dart';
// Import the LoginPage

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CustomIcons(),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.brown,
            ),
          ),
          SizedBox(width: 20)
        ],
      ),
      body: HomeBody(), // Extracted widget for the body
    );
  }
}

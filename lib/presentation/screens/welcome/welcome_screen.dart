import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  
  static const String name = 'welcome-screen';
  
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('welcome'),),
    );
  }
}
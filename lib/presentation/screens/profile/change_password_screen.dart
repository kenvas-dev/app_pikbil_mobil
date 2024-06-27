import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  
  static const String name = 'change-password-screen';
  
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('change-password', style: TextStyle(fontSize: 40,  fontFamily: 'Gotham-Book')),),
    );
  }
}

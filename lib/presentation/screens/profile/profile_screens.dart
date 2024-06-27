import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  static const String name = 'profile-screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Profile Screen', style: TextStyle(fontFamily: 'Gotham-Regular'),),
      ),
    );
  }
}

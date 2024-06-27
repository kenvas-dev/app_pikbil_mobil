import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  
  static const String name = 'notification-screen';
  
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('notification', style: TextStyle(fontSize: 40,  fontFamily: 'Gotham-Book')),),
    );
  }
}

import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  
  static const String name = 'account-screen';
  
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('account', style: TextStyle(fontSize: 40,  fontFamily: 'Gotham-Book')),),
    );
  }
}

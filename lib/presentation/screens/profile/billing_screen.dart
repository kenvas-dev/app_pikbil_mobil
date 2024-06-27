import 'package:flutter/material.dart';

class BillingScreen extends StatelessWidget {
  
  static const String name = 'billing-screen';
  
  const BillingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('billing', style: TextStyle(fontSize: 40,  fontFamily: 'Gotham-Book')),),
    );
  }
}

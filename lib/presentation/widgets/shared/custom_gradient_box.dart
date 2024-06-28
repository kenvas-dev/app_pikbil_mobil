import 'package:flutter/material.dart';

class CustomGradientBox extends StatelessWidget {
  final List<Color> colorsGradient;
  final Widget child;
  final Alignment begin;
  final Alignment end;

  CustomGradientBox(
      {super.key,
      required this.colorsGradient,
      required this.child,
      required this.begin,
      required this.end});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(begin: begin, end: end, colors: colorsGradient)),
      child: Padding(padding: const EdgeInsets.all(30), child: child),
    );
  }
}

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback voidCallback;
  final EdgeInsetsDirectional margin;
  final BorderRadius borderRadius;
  final Color colorButton;
  final Text textButton;
  final double? width;

  const CustomButton(
      {super.key,
      required this.voidCallback,
      required this.margin,
      required this.borderRadius,
      required this.colorButton,
      required this.textButton,
      this.width});

  @override
  Widget build(BuildContext context) {
    width != null ?? MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        margin: margin,
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Container(
            width: width,
            color: colorButton,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: textButton,
            ),
          ),
        ),
      ),
    );
  }
}

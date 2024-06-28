import 'package:flutter/material.dart';


class CustomFloatingButton extends StatelessWidget {
  final Alignment alignment;
  final VoidCallback voidCallback;
  final EdgeInsetsDirectional margin;
  final BorderRadius borderRadius;
  final Color colorButton;
  final Text textButton;

  const CustomFloatingButton(
      {super.key,
      required this.alignment,
      required this.voidCallback,
      required this.margin,
      required this.borderRadius,
      required this.colorButton,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: GestureDetector(
        onTap: () => voidCallback,
        child: Container(
          margin: margin,
          child: ClipRRect(
            borderRadius: borderRadius,
            child: Container(
              width: double.infinity,
              color: colorButton,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: textButton,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

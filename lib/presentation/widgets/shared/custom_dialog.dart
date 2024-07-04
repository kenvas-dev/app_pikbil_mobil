import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final bool hasEnabledButtonClose;
  final List<Widget> actions;

  const CustomDialog(
      {super.key,
      required this.title,
      required this.content,
      required this.actions,
      required this.hasEnabledButtonClose});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.bottomCenter,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: CustomText.headlineDark700,
          ),
          if (hasEnabledButtonClose)
            IconButton(
                onPressed: () =>
                    Navigator.of(context, rootNavigator: true).pop(),
                icon: Icon(Icons.close))
        ],
      ),
      content: Text(
        content,
        textAlign: TextAlign.start,
        style: CustomText.headlineBookDark400,
      ),
      actions: actions,
    );
  }
}

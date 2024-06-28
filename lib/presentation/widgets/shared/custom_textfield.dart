import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String placeholder;
  final String labelText;
  final TextInputType textInputType;

  const CustomTextField(
      {super.key,
      required this.placeholder,
      required this.labelText,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
        borderSide: BorderSide(color: CustomColor.primary300, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)));

    const OutlineInputBorder outlineInputErrorBorder = OutlineInputBorder(
        borderSide: BorderSide(color: CustomColor.error600, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)));
        
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: CustomText.headlineDark500,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            keyboardType: textInputType,
            decoration: InputDecoration(
                enabledBorder: outlineInputBorder,
                focusedBorder: outlineInputBorder,
                errorBorder: outlineInputErrorBorder,
                hintText: placeholder,
                border: outlineInputBorder),
          ),
        ],
      ),
    );
  }
}

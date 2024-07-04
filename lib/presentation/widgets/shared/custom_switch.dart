import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final String label;
  final Function(bool) onChanged;
  final bool value;

  const CustomSwitch(
      {super.key,
      required this.label,
      required this.onChanged,
      required this.value});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          textAlign: TextAlign.start,
          style: CustomText.headlineDark400,
        ),
        Switch(
          value: widget.value,
          onChanged: widget.onChanged,
          activeColor: CustomColor.primary000,
          activeTrackColor: CustomColor.information600,
          inactiveThumbColor: CustomColor.primary000,
          inactiveTrackColor: CustomColor.primary300,
        ),
      ],
    );
  }
}

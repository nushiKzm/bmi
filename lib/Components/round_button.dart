import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  RoundButton({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
      fillColor: kpaleColor,
      child: Icon(icon),
    );
  }
}

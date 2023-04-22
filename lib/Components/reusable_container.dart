import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  // ignore: non_constant_identifier_names
  ReusableContainer({required this.cardChild}); //remove required
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kcardColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: cardChild,
    );
  }
}

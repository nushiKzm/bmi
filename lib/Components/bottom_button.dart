import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  BottomButton({required this.text, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kbottomButtonColor,
        width: double.infinity,
        height: kbottomButtonHeight,
        child: Center(
          child: Text(
            text,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

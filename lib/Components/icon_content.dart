import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData myicon;
  final String text;
  final Color color;
  IconContent({required this.myicon, required this.text, required this.color});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myicon,
          size: 78,
          color: color,
        ),
        const SizedBox(height: 15.0),
        Text(
          text,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}

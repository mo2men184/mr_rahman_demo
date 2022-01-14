import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final bool big;
  final String text;
  final Color color;
  final double fontSize;
  final bool spaced;
  final FontWeight fontWeight;

  const CustomText({
    Key? key,
    this.color = Colors.white,
    this.big = false,
    this.spaced = false,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 18,
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        letterSpacing: spaced ? 1.5 : 1.0,
        fontSize: big ? 22 : fontSize,
        fontWeight: big ? FontWeight.bold : fontWeight,
      ),
    );
  }
}

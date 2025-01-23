import 'package:flutter/material.dart';

class Reusedtext extends StatelessWidget {
  const Reusedtext({
    super.key,
    required this.textContent,
    required this.size,
    required this.textColor,
    required this.isBold,
  });
  final String textContent;
  final double size;
  final Color textColor;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: TextStyle(
          fontSize: size,
          color: textColor,
          fontWeight: isBold ? FontWeight.normal : FontWeight.bold),
    );
  }
}

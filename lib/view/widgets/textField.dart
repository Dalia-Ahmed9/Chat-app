import 'package:chatapp/utils/colors.dart';
import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key, required this.hintText, required this.prefixicon});
  final String hintText;
  final Widget prefixicon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:
            TextStyle(color: AppColors.darkBlue.withAlpha(150), fontSize: 20),
        prefixIcon: prefixicon,
      ),
    );
  }
}

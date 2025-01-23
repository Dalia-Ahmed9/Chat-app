import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReusedIcon extends StatelessWidget {
  const ReusedIcon({super.key, required this.imageName, required this.ontap});
  final String imageName;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(15),
        height: 80,
        width: 130,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        child: SvgPicture.asset(
          imageName,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}

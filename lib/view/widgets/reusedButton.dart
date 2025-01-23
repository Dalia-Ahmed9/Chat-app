import 'package:chatapp/utils/colors.dart';
import 'package:flutter/material.dart';

class Reusedbutton extends StatelessWidget {
  const Reusedbutton({
    super.key,
    required this.onpressed,
    required this.buttonText,
  });
  final VoidCallback onpressed;
  final String buttonText;
  //final double isbigWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blue,
              fixedSize: Size(double.infinity, 80),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)))),
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
    );
  }
}

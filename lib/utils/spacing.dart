import 'package:flutter/material.dart';

class Spacing {
  //for vertical space

  static Widget verticalSpace(double size) {
    return SizedBox(
      height: size,
    );
  }

  //for horizental space

  static Widget horizontalSpace(double size) {
    return SizedBox(
      width: size,
    );
  }
}

import 'package:flutter/material.dart';

extension EdgeInsetsConverter on EdgeInsets {
  static EdgeInsets custom(double top, double bottom, double left, double right) {
    return EdgeInsets.only(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
    );
  }
}

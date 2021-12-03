import 'dart:math';

import 'package:flutter/widgets.dart';

double getScreenPercentage(Size size, int value, bool? isWidth) {
  double result;
  num mod = pow(10.0, 2);

  if (isWidth != null && isWidth) {
    result = size.width * (value / (436 / 100) / 100);
  }
  result = size.height * (value / (838 / 100) / 100);

  return ((result * mod).round().toDouble() / mod);
}

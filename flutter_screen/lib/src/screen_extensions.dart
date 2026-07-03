import 'package:flutter/material.dart';
import 'package:flutter_screen/flutter_screen.dart';

extension ScreenExtension on num {
  /// Responsive Width
  double get w => Screen.scaleWidth(toDouble());

  /// Responsive Height
  double get h => Screen.scaleHeight(toDouble());

  /// Responsive Font Size
  double get sp => Screen.scaleText(toDouble());

  /// Responsive Radius
  double get r => Screen.scaleRadius(toDouble());

  /// Percentage of Screen Width
  double get sw => Screen.width * (toDouble() / 100);

  /// Percentage of Screen Height
  double get sh => Screen.height * (toDouble() / 100);

  /// Vertical Space
  SizedBox get verticalSpace => SizedBox(height: h);

  /// Horizontal Space
  SizedBox get horizontalSpace => SizedBox(width: w);
}

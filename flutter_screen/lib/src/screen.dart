import 'package:flutter/material.dart';
import 'package:flutter_screen/flutter_screen.dart';

class Screen {
  static late MediaQueryData _mediaQuery;

  static Size _designSize = const Size(390, 844);

  static void configure({Size designSize = const Size(390, 844)}) {
    _designSize = designSize;
  }

  static void init(BuildContext context, {required Size designSize}) {
    _mediaQuery = MediaQuery.of(context);

    _designSize = designSize;
  }

  static double get width => _mediaQuery.size.width;

  static double get height => _mediaQuery.size.height;

  static double get safeTop => _mediaQuery.padding.top;

  static double get safeBottom => _mediaQuery.padding.bottom;

  static Orientation get orientation => _mediaQuery.orientation;

  static bool get isPortrait => orientation == Orientation.portrait;

  static bool get isLandscape => orientation == Orientation.landscape;

  static bool get isTablet => width >= 600;

  static bool get isMobile => width < 600;

  static bool get isDesktop => width >= 900;
  static DeviceType get deviceType {
    if (width >= 900) {
      return DeviceType.desktop;
    }

    if (width >= 600) {
      return DeviceType.tablet;
    }

    return DeviceType.mobile;
  }

  static double scaleWidth(double value) {
    return value * width / _designSize.width;
  }

  static double scaleHeight(double value) {
    return value * height / _designSize.height;
  }

  static double get _scaleWidth => width / _designSize.width;

  static double get _scaleHeight => height / _designSize.height;

  static double get _scale =>
      _scaleWidth < _scaleHeight ? _scaleWidth : _scaleHeight;

  static double scaleRadius(double value) {
    return value * _scale;
  }

  static double scaleText(double value) {
    return value * _scale;
  }
}

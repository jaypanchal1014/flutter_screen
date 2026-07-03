import 'package:flutter/material.dart';
import 'package:flutter_screens/flutter_screens.dart';
import 'package:flutter_screens/src/enums/screen_type.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget? mobile;

  final Widget? tablet;

  final Widget? desktop;

  const ResponsiveBuilder({super.key, this.mobile, this.tablet, this.desktop});

  @override
  Widget build(BuildContext context) {
    switch (Screen.deviceType) {
      case DeviceType.mobile:
        return mobile ?? const SizedBox();

      case DeviceType.tablet:
        return tablet ?? mobile ?? const SizedBox();

      case DeviceType.desktop:
        return desktop ?? tablet ?? mobile ?? const SizedBox();
    }
  }
}

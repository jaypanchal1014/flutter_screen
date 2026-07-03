import 'package:flutter/material.dart';

import 'screen.dart';

class ScreenInit extends StatelessWidget {
  final Size designSize;

  final Widget child;

  const ScreenInit({
    super.key,
    required this.designSize,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        Screen.init(
          context,
          designSize: designSize,
        );

        return child;
      },
    );
  }
}
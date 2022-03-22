import 'dart:math';

import 'package:flutter/material.dart';

class ClockSecondsTicker extends StatelessWidget {
  final int seconds;
  final double width;
  final double height;
  final double radius;

  const ClockSecondsTicker({
    Key? key,
    required this.seconds,
    required this.height,
    required this.width,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2, 0.0)
        ..rotateZ(pi * seconds / 30)
        ..translate(0.0, radius - height / 2, 0.0),
      child: Container(
        width: width,
        height: height,
        color: seconds % 5 == 0 ? Colors.white : Colors.white38,
      ),
    );
  }
}

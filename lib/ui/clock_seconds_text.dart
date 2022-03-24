import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stopwatch_flutter/ui/elapsed_time_text.dart';

class ClockSecondsText extends StatelessWidget {
  final int seconds;
  final double height;
  final double width;
  final double radius;

  const ClockSecondsText({
    Key? key,
    required this.seconds,
    required this.height,
    required this.width,
    required this.radius,
  });

  String get secondsString => seconds.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width, -height / 2, 0)
        ..rotateZ((pi * seconds / 30) + pi)
        ..translate(0.0, radius - 2 * height, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimeDigit(secondsString.substring(0,1), width: width),
          TimeDigit(secondsString.substring(1,2), width: width)
        ],
      ),
    );
  }
}

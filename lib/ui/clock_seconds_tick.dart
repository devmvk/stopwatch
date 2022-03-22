import 'dart:math';

import 'package:flutter/material.dart';

class ClockSecondsTicker extends StatelessWidget {
  final int seconds;
  final double width;
  final double height;

  const ClockSecondsTicker({
    Key? key,
    required this.seconds,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
      ..translate(0, )
      ..rotateZ(pi + ((seconds % 60) * (pi / 30))),
      child: Container(
        width: width,
        height: height,
        color: seconds % 5 == 0 ? Colors.white : Colors.white38,
      ),
    );
  }
}

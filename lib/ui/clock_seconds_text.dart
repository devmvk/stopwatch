import 'dart:math';

import 'package:flutter/material.dart';

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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
      ..translate(-width/2, -height/2, 0)
      ..rotateZ(pi * seconds / 30)
      ,
      child: Container(
        height: height,
        width: width,
        child: Text(seconds.toString()),
      ),
    );
  }
}

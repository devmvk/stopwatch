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
    return Container(
      child: Text(seconds.toString()),
    );
  }
}

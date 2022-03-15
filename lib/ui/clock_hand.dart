import 'package:flutter/material.dart';

class ClockHand extends StatelessWidget {
  final double height;
  final double angleRadians;
  final double width;
  final Color color;

  const ClockHand({
    Key? key,
    required this.height,
    required this.angleRadians,
    required this.width,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
      ..rotateZ(angleRadians),
      child: Container(
        width: width,
        height: height,
        color: color,
      ),
    );
  }
}

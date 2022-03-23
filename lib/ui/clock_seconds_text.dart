import 'package:flutter/material.dart';

class ClockSecondsText extends StatelessWidget {
  final int seconds;
  const ClockSecondsText({
    Key? key,
    required this.seconds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(seconds.toString()),
    );
  }
}

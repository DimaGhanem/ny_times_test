import 'package:flutter/material.dart';
import 'package:ny_times_test/views/utils/contants.dart';

class CircleProgress extends StatelessWidget {
  const CircleProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: kAccentColor,
    );
  }
}

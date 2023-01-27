import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scorekeeper/constants/const.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double bottomleft;
  final double bottomright;
  final double topleft;
  final double topright;
  final Widget widget;
  const CustomContainer(
      {super.key,
      required this.bottomleft,
      required this.bottomright,
      required this.topleft,
      required this.topright,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(bottomleft),
        bottomRight: Radius.circular(bottomleft),
        topLeft: Radius.circular(topleft),
        topRight: Radius.circular(topright),
      ),
      child: widget,
    );
  }
}

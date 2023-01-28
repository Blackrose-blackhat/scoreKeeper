import 'package:flutter/material.dart';
import 'package:scorekeeper/constants/const.dart';

class Team extends StatelessWidget {
  final double height;
  final double width;
  const Team({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: const Image(
        image: NetworkImage(team1img),
        fit: BoxFit.fill,
      ),
    );
  }
}

class Team2 extends StatelessWidget {
  final double height;
  final double width;
  const Team2({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: const Image(
        image: NetworkImage(team2img),
        fit: BoxFit.fill,
      ),
    );
  }
}

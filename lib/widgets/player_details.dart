import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:scorekeeper/constants/const.dart';

class PlayerDetails extends StatelessWidget {
  final String playername;
  final String Avatar1;
  const PlayerDetails({
    Key? key,
    required this.playername,
    required this.Avatar1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(Avatar1),
          ),
        ),
        Container(
          height: 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 170,
            child: TextField(
              onChanged: (String newText) {
                if (newText.isNotEmpty) {
                  SemanticsService.announce(
                      '\$$newText', Directionality.of(context));
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Player name',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

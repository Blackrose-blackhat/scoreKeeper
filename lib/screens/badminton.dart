import 'package:flutter/material.dart';
import 'package:scorekeeper/constants/colors.dart';
import 'package:scorekeeper/constants/const.dart';
import 'package:scorekeeper/widgets/Team.dart';
import 'package:scorekeeper/widgets/player_details.dart';

const double radius = 42;
int counter1 = 0;
int counter2 = 0;

TextStyle textStyle() {
  return const TextStyle(fontSize: 48);
}

class Shuttle extends StatefulWidget {
  const Shuttle({super.key});

  @override
  State<Shuttle> createState() => _ShuttleState();
}

class _ShuttleState extends State<Shuttle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 383,
              width: 381,
              margin: const EdgeInsets.all(3),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(radius),
                              bottomRight: Radius.circular(radius),
                            ),
                          ),
                          child: const Image(
                            image: NetworkImage(bg1img),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Align(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 88.0),
                            child: Container(
                              height: 230,
                              width: 331,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(radius),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(103, 0, 0, 0),
                                    offset: Offset(1, 1),
                                    blurRadius: 20,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'TIMER',
                                        style: TextStyle(
                                          fontSize: 23,
                                        ),
                                      ),
                                    ),
                                    //TODO timer
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Team(
                                            height: 80,
                                            width: 100,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                counter1.toString(),
                                                style: textStyle(),
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                ':',
                                                style: textStyle(),
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                counter2.toString(),
                                                style: textStyle(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Team2(
                                            height: 85,
                                            width: 106,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 373,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: ConstantColor.indigo700E0,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(radius),
                          topRight: Radius.circular(radius),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 250,
                      width: 331,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(
                          Radius.circular(radius),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(112, 0, 0, 0),
                              offset: Offset(1, 2),
                              spreadRadius: 2,
                              blurRadius: 10),
                        ],
                      ),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text('Player Details'),
                          ),
                          PlayerDetails(
                            Avatar1: player1img,
                            playername: 'Player 1',
                          ),
                          PlayerDetails(
                              playername: 'Player 2', Avatar1: player1img)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

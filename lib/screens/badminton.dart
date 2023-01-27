import 'package:flutter/material.dart';
import 'package:scorekeeper/constants/const.dart';
import 'package:scorekeeper/constants/custom_container.dart';
import 'package:scorekeeper/constants/Team.dart';

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
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 583,
              width: 381,
              margin: const EdgeInsets.all(3),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CustomContainer(
                      bottomleft: radius,
                      bottomright: radius,
                      topleft: 0,
                      topright: 0,
                      widget: Stack(
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
                            ),
                          ),
                          Align(
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
                                            width: 100,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
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
    ));
  }
}
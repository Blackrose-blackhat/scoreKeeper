import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:scorekeeper/constants/colors.dart';
import 'package:scorekeeper/constants/const.dart';
import 'package:scorekeeper/widgets/Team.dart';
import 'package:scorekeeper/widgets/menu_items/settings.dart';
import 'package:scorekeeper/widgets/player_details.dart';
import 'package:scorekeeper/widgets/AppBar.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

TextStyle textStyle() {
  return const TextStyle(fontSize: 48);
}

class Shuttle extends StatefulWidget {
  const Shuttle({super.key});

  @override
  State<Shuttle> createState() => _ShuttleState();
}

class _ShuttleState extends State<Shuttle> {
  final _stopwatctimer = StopWatchTimer();
  final _isHours = true;

  @override
  void dispose() {
    _stopwatctimer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 383,
                width: 381,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: CustomAppBar(),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 18.0),
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
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: StreamBuilder<int>(
                                            stream: _stopwatctimer.rawTime,
                                            initialData:
                                                _stopwatctimer.rawTime.value,
                                            builder: (context, snapshot) {
                                              final value = snapshot.data;
                                              final displayTime =
                                                  StopWatchTimer.getDisplayTime(
                                                      hours: _isHours, value!);
                                              return Text(
                                                displayTime,
                                                style: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.black),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      //TODO timer
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Team(
                                              ontap: () {
                                                if (counter1 ==
                                                    dropdownValue - 1) {
                                                  setState(() {
                                                    counter1 = 0;
                                                  });

                                                  QuickAlert.show(
                                                    context: context,
                                                    type: QuickAlertType.custom,
                                                    barrierDismissible: true,
                                                    confirmBtnText: 'Okay!',
                                                    widget:
                                                        Text('Player 1 won'),
                                                    //TODO GIF
                                                  );
                                                  _stopwatctimer.onExecute.add(
                                                      StopWatchExecute.stop);
                                                } else {
                                                  setState(() {
                                                    counter1++;
                                                  });
                                                }
                                              },
                                              height: 80,
                                              width: 100,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 18.0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Team2(
                                              height: 85,
                                              width: 106,
                                              ontap: () {
                                                if (counter2 ==
                                                    dropdownValue - 1) {
                                                  setState(() {
                                                    counter2 = 0;
                                                  });

                                                  QuickAlert.show(
                                                    context: context,
                                                    type: QuickAlertType.custom,
                                                    barrierDismissible: true,
                                                    confirmBtnText: 'Okay!',
                                                    widget: Column(
                                                      children: [
                                                        Text('Player 2 won'),
                                                      ],
                                                    ),

                                                    //TODO GIF
                                                  );
                                                  _stopwatctimer.onExecute.add(
                                                      StopWatchExecute.stop);
                                                } else {
                                                  setState(() {
                                                    counter2++;
                                                  });
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            _stopwatctimer.onExecute
                                                .add(StopWatchExecute.start);
                                          },
                                          child: const Text('Start Timer'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            _stopwatctimer.onExecute
                                                .add(StopWatchExecute.reset);
                                          },
                                          child: const Text('Reset Timer'),
                                        )
                                      ],
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
      ),
    );
  }
}

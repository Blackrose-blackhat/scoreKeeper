import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:scorekeeper/routers.dart';
import 'package:scorekeeper/screens/badminton.dart';
import 'package:scorekeeper/widgets/menu_items/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) => RouteGenerate.generateRoute(settings),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 0, 0, 0),
          size: 31,
        ),
      ),
      home: Shuttle(),
    );
  }
}

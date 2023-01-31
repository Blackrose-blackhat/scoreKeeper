import 'package:flutter/material.dart';
import 'package:scorekeeper/widgets/menu_items/settings.dart';
import 'main.dart';
import 'package:scorekeeper/screens/badminton.dart';

class RouteGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: ((context) => MyApp()));

      case '/settings':
        return MaterialPageRoute(builder: ((context) => Settings()));
      default:
        return MaterialPageRoute(builder: ((context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('ERROR'),
              centerTitle: true,
            ),
            body: const Center(
              child: Text('Page Not Found'),
            ),
          );
        }));
    }
  }
}

import 'package:flutter/material.dart';
import 'package:scorekeeper/constants/const.dart';
import 'package:scorekeeper/widgets/menu_items/settings.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 230,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(bg1img),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(2, 3),
                            blurRadius: 15),
                      ],
                    ),
                    child: GestureDetector(
                      //TODO on tap to go back to home screen
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  Container(
                    width: 45,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(2, 3),
                            blurRadius: 15),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/settings');
                      },
                      child: const Icon(Icons.settings),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

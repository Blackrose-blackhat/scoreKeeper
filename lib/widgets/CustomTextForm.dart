import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String textEditinLabel;
  const CustomTextInput({
    Key? key,
    required this.textEditinLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: textEditinLabel,
          labelStyle: const TextStyle(color: Colors.blueAccent),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueAccent,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}

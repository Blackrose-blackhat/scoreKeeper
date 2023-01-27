import 'package:flutter/material.dart';
import 'dart:ui';

class ConstantColor {
  static Color indigo700E0 = fromHex('#e0255095');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

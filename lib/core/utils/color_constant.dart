import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA70087 = fromHex('#87ffffff');

  static Color yellow800 = fromHex('#f69d34');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray800 = fromHex('#35383f');

  static Color gray900 = fromHex('#181a20');

  static Color greenA7003f = fromHex('#3f1ab65c');

  static Color blueGray900 = fromHex('#31343b');

  static Color cyan600 = fromHex('#1aadb6');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black800 = fromHex('#181A20');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

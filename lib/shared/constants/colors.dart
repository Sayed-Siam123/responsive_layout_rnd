import 'package:flutter/material.dart';

class ColorConstants {
  
  static const Color GREEN = Color(0xFF6B8449);
  static const Color BLACK = Color(0xFF000000);
  static const Color GREY = Color(0xFF8C97A8);
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color RED = Color(0xFFFD3131);
  static const Color YELLOW = Color(0xFFFFC800);
  static const Color CARDTOPLEFT = Color(0xFF6A8349);
  static const Color CARDBOTTOMRIGHT = Color(0xFFCFF09E);

  static const Color WHITEBACKGROUND = Color(0xFFF2F5F6);
  static const Color optionColor1 = Color(0xFFFD73B0);
  static const Color optionColor2 = Color(0xFF9E52B6);
  static const Color optionColor3 = Color(0xFFD8143A);
  static const Color optionColor4 = Color(0xFF05B985);
  static const Color optionColor5 = Color(0xFFFFB81F);
  static const Color optionColor6 = Color(0xFF4A89DC);
  static const Color optionColor7 = Color(0xFFFF7400);

  static const Color VIOLET = Color(0xFF6F5CC2);
  static const Color TEXTBLACK = Color(0xFF323143);

  static const Color PRIMARYBLUE = Color(0xFF017DC1);


//#017DC1
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xff000000 : 0x00000000),

  );
}

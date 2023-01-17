import 'package:flutter/material.dart';

class NavigatorHelper {
  static void popLastScreens({
    BuildContext? context,
    required int popCount,
  }) {
    int count = 0;
    while (count < popCount) {
      Navigator.pop(context!);
      count++;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

abstract class ConstantFunctions{

  static setStatusBarColorWhite() async{
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    await FlutterStatusbarcolor.setStatusBarColor(ColorConstants.BACKGROUNDCOLOR, animate: true);
  }

  static setStatusBarColorGreen() async{
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    await FlutterStatusbarcolor.setStatusBarColor(ColorConstants.BACKGROUNDCOLOR, animate: true);
  }

  static setStatusBarColorDashboard() async{
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    await FlutterStatusbarcolor.setStatusBarColor(ColorConstants.BACKGROUNDCOLOR, animate: true);
  }

  static closeKeyboard({BuildContext? context}){
    FocusScope.of(context!).unfocus();
  }

  static bool isOpenKeyboard({BuildContext? context}){
    if(MediaQuery.of(context!).viewInsets.bottom == 0){
      return false;
    }
    else{
      return true;
    }
  }

}
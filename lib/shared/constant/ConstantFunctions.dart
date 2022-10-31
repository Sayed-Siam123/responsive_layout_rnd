import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants/colors.dart';

abstract class FunctionsConstant{

  static setStatusBarColorWhite() async{
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    await FlutterStatusbarcolor.setStatusBarColor(ColorConstants.WHITE, animate: true);
  }

  static setStatusBarColorBlack() async{
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    await FlutterStatusbarcolor.setStatusBarColor(ColorConstants.BLACK, animate: true);
  }


  static setStatusBarColorDashboard() async{
    await FlutterStatusbarcolor.setStatusBarColor(Colors.blue, animate: true);

    if (useWhiteForeground(Colors.blue)) {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    } else {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    }
  }

  static closeKeyboard({BuildContext? context}){
    //FocusScope.of(context!).unfocus();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static bool isOpenKeyboard({BuildContext? context}){
    if(MediaQuery.of(context!).viewInsets.bottom == 0){
      return false;
    }
    else{
      return true;
    }
  }

  static int? orientation({context}){
    var result = -1;
    if(MediaQuery.of(context).orientation == Orientation.portrait){
      result = 0;  //"portrait";
    }
    else{
      result = 1; //"landscape";
    }
    return result;
  }

  static bool isTablet({BuildContext? context,SizingInformation? sizingInformation}){
    if(sizingInformation!.isTablet || sizingInformation.localWidgetSize.height > 1000){
      return true;
    }
    else{
      return false;
    }
  }

  static changeOrientation({mode}) {
    if(mode == 0){
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight
      ]);
    }
    else if(mode == 1){
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]);
    }
    else{
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]);
    }
  }

}
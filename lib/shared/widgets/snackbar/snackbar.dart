import 'package:flutter/material.dart';

class SnackBarProvider{
  static showSnackBar({title,message}) async{
    /*Get.showSnackbar(
      GetBar(
        title: "$title",
        message: "$message",
        isDismissible: true,
        snackPosition: SnackPosition.BOTTOM,
      ),
    );
    await Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      Get.back(closeOverlays: false,canPop: false);
    });*/
  }

  static showSnackBarError({title,message}) async{
    // Get.showSnackbar(
    //   GetBar(
    //     titleText: Text("$title",style: TextStyle(color: Colors.red.shade600),),
    //     message: "$message",
    //     isDismissible: true,
    //     snackPosition: SnackPosition.BOTTOM,
    //   ),
    // );
    // await Future.delayed(const Duration(seconds: 2)).whenComplete(() {
    //   Get.back(closeOverlays: false,canPop: false);
    // });
  }
}
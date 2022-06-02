// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:get/get.dart';
// import 'package:loading_indicator/loading_indicator.dart';
//
// import '../../constants/colors.dart';
//
// class Loader{
//   static showLoading({bool? dismissOnTap}){
//     EasyLoading.show(
//         dismissOnTap: dismissOnTap,
//         indicator: Container(
//           height: 50,
//           width: 50,
//           child: LoadingIndicator(
//               indicatorType: Indicator.lineSpinFadeLoader,
//               colors: [ColorConstants.backgroundSecondary],
//               strokeWidth: 0.1,
//               backgroundColor: Colors.transparent,
//               pathBackgroundColor: Colors.black)
//     ),maskType: EasyLoadingMaskType.custom);
//   }
//
//   static dismissLoading(){
//     EasyLoading.dismiss();
//   }
// }
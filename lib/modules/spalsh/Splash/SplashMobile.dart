import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_layout_rnd/helper/internet_checker_helper/internet_checker_helper_logic.dart';
import 'package:responsive_layout_rnd/modules/spalsh/splash_logic.dart';

class SplashMobilePortrait extends GetView<SplashLogic> {
  final SizingInformation? sizingInformation;
  const SplashMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("Mobile Porttrait"),
          ],
        ),
      ),
    );
  }
}

class SplashMobileLandscape extends GetView<SplashLogic> {
  final SizingInformation? sizingInformation;
  const SplashMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return SafeArea(
      child: Scaffold(
        body: Column(
            children: [
            Text("Mobile Landscape"),
          ],
        ),
      ),
    );
  }
}



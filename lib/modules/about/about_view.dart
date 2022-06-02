import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/internet_checker_helper/internet_checker_helper_logic.dart';
import 'about_logic.dart';

class AboutPage extends GetView<AboutLogic> {
  @override
  Widget build(BuildContext context) {
   Get.find<AboutLogic>();
   Get.find<InternetCheckerHelperLogic>();

    return Container();
  }
}

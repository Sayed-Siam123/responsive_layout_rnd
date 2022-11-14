import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_layout_rnd/helper/NotificationHelper.dart';
import 'package:responsive_layout_rnd/modules/dashboard/dashboard_logic.dart';

import '../../../helper/internet_checker_helper/internet_checker_helper_logic.dart';

class DashboardMobilePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            child: Text("Notify ME"),
            onPressed: () {
              NotificationHelper.showBigTextNotification(title: "sasa", body: "sasa", fln: controller.flutterLocalNotificationsPlugin);
            },
          ),
        ],
      ),
    ));
  }
}


class DashboardMobileLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return SafeArea(child: Scaffold());
  }
}
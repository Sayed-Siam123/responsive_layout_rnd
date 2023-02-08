import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_layout_rnd/helper/NotificationHelper.dart';
import 'package:responsive_layout_rnd/modules/dashboard/dashboard_logic.dart';

import '../../../helper/internet_checker_helper/internet_checker_helper_logic.dart';
import '../../../shared/constants/ConstantSize.dart';
import '../../../shared/constants/colors.dart';

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

          ElevatedButton(
            child: Text("Build Table Data"),
            onPressed: () {
              controller.buildTable();
            },
          ),

          TabBar(
            isScrollable: true,
            indicator: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      SizeConstant.GRIDITEMRADIUS + 5)),
              color: ColorConstants.PRIMARYBLUE,
            ),
            labelColor: ColorConstants.WHITE,
            unselectedLabelColor: ColorConstants.GREY,
            controller: controller.flightLogAltTabController,
            tabs: controller.tabList,
            labelStyle: const TextStyle(
                fontWeight: FontWeight.w800, fontSize: 16),
            indicatorColor: ColorConstants.PRIMARYBLUE,
          ),

          // TabBarView(
          //   controller: controller.flightLogAltTabController,
          //   children: [
          //
          //   ],
          // ),

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
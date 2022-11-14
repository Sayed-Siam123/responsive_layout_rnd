import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:responsive_layout_rnd/helper/NotificationHelper.dart';

class DashboardLogic extends GetxController {

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    NotificationHelper.notificationInitialize(flutterLocalNotificationsPlugin: flutterLocalNotificationsPlugin);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}

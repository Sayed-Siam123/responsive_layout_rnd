import 'dart:convert';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper{
  static Future notificationInitialize({FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin}) async{
    var androidInitialize = const AndroidInitializationSettings('mipmap/ic_launcher');
    var iOSInitialize = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestCriticalPermission: true,
      requestSoundPermission: true,
    );
    var initializationsSettings = InitializationSettings(android: androidInitialize, iOS: iOSInitialize);
    await flutterLocalNotificationsPlugin!.initialize(initializationsSettings);
  }

  static Future showBigTextNotification({var id =0,required String title, required String body, var payload, required FlutterLocalNotificationsPlugin fln}) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
    const AndroidNotificationDetails(
      'noti_channel',
      'notification_channel',
      playSound: true,
      //sound: RawResourceAndroidNotificationSound('notification'),
      importance: Importance.max,
      priority: Priority.high,
    );

    var not = NotificationDetails(android: androidPlatformChannelSpecifics,
        iOS: const DarwinNotificationDetails(
          presentSound: false,
          presentBadge: false,
          interruptionLevel: InterruptionLevel.active,
        )
    );

    await fln.show(0, title, body, not,payload: jsonEncode({"id":"1","toPage": "/"}));
  }
}
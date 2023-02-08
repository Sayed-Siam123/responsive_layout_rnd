import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:responsive_layout_rnd/helper/NotificationHelper.dart';

class DashboardLogic extends GetxController with GetTickerProviderStateMixin {

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  late TabController flightLogAltTabController;

  var flightLogAltJson2 = {
    "Aircraft": {
      "fields": ["Date", "Type", "Reg"],
      "data": [
        {
          "Date": "1/11/2023 12:00:00 AM",
          "Type": "S-70A",
          "Reg": "N60",
          "remarks": "test_android"
        },
        {
          "Date": "1/12/2023 12:00:00 AM",
          "Type": "S-60A",
          "Reg": "N70",
          "remarks": "test_android"
        },
        {
          "Date": "1/13/2023 12:00:00 AM",
          "Type": "S-50A",
          "Reg": "N80",
          "remarks": "test_android"
        },
      ]
    },
    "Routes of flight": {
      "fields": ["Date", "From", "Via", "To"],
      "data": [
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Form": "06CL",
          "Via": "sgdjz,14AR,09CL",
          "To": "N5282"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Form": "06CL",
          "Via": "sgdjz,14AR,09CL",
          "To": "N5282"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Form": "06CL",
          "Via": "sgdjz,14AR,09CL",
          "To": "N5282"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Form": "06CL",
          "Via": "sgdjz,14AR,09CL",
          "To": "N5282"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Form": "06CL",
          "Via": "sgdjz,14AR,09CL",
          "To": "N5282"
        },
      ]
    },
    "Duration of flight": {
      "fields": ["Date", "Duration of flight"],
      "data": [
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Duration of flight": "0.0",
          "review": "test_Android Day"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Duration of flight": "0.0",
          "review": "test_Android Day"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Duration of flight": "0.0",
          "review": "test_Android Day"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Duration of flight": "0.0",
          "review": "test_Android Day"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Duration of flight": "0.0",
          "review": "test_Android Day"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Duration of flight": "0.0",
          "review": "test_Android Day"
        },
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
    "Type of Piloting Time": {
      "fields": [
        "Date",
        "PIC",
        "SIC",
        "C.C",
        "Instuctor",
        "Dual Records",
        "Solo"
      ],
      "data": [
        {
          "Date": "Total Brought Forward",
          "PIC": "0.0",
          "SIC": "0.0",
          "C.C": "0.0",
          "Instructor": "0.0",
          "Dual Records": "0.0",
          "Solo": "0.0"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "PIC": "0.0",
          "SIC": "0.0",
          "C.C": "0.0",
          "Instructor": "0.0",
          "Dual Records": "0.0",
          "Solo": "0.0"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "PIC": "0.0",
          "SIC": "0.0",
          "C.C": "0.0",
          "Instructor": "0.0",
          "Dual Records": "0.0",
          "Solo": "0.0"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "PIC": "0.0",
          "SIC": "0.0",
          "C.C": "0.0",
          "Instructor": "0.0",
          "Dual Records": "0.0",
          "Solo": "0.0"
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "PIC": "0.0",
          "SIC": "0.0",
          "C.C": "0.0",
          "Instructor": "0.0",
          "Dual Records": "0.0",
          "Solo": "0.0"
        },
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
    "Day": {
      "fields": ["Date", "T-0", "LDGs"],
      "data": [
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
    "Night": {
      "fields": ["Date", "T-0", "LDGs"],
      "data": [
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {"Date": "Total Brought forward", "T-0": "0.0", "LDgs": "0.0"},
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
    "Approaches": {
      "fields": ["Date", "Inst", "Non Inst", "Holds"],
      "data": [
        {
          "Date": "Total Brought forward",
          "Inst": "0.0",
          "Non Inst": "0.0",
          "Holds": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Inst": "0.0",
          "Non Inst": "0.0",
          "Holds": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Inst": "0.0",
          "Non Inst": "0.0",
          "Holds": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Inst": "0.0",
          "Non Inst": "0.0",
          "Holds": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Inst": "0.0",
          "Non Inst": "0.0",
          "Holds": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Inst": "0.0",
          "Non Inst": "0.0",
          "Holds": "0.0",
        },
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
    "NVG": {
      "fields": [
        "Date",
        "Time",
        "Non Ops",
      ],
      "data": [
        {
          "Date": "Total Brought forward",
          "Time": "0.0",
          "Ops": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Time": "0.0",
          "Ops": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Time": "0.0",
          "Ops": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Time": "0.0",
          "Ops": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Time": "0.0",
          "Ops": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Time": "0.0",
          "Ops": "0.0",
        },
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
    "Condition of flight": {
      "fields": [
        "Date",
        "Night",
        "ActuInst",
        "SimInst",
      ],
      "data": [
        {
          "Date": "Total Brought forward",
          "Night": "0.0",
          "ActuInst": "0.0",
          "SimInst": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Night": "0.0",
          "ActuInst": "0.0",
          "SimInst": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Night": "0.0",
          "ActuInst": "0.0",
          "SimInst": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Night": "0.0",
          "ActuInst": "0.0",
          "SimInst": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Night": "0.0",
          "ActuInst": "0.0",
          "SimInst": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Night": "0.0",
          "ActuInst": "0.0",
          "SimInst": "0.0",
        },
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
    "FltSim": {
      "fields": [
        "Date",
        "FltSim",
      ],
      "data": [
        {
          "Date": "Total Brought forward",
          "FltSim": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "FltSim": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "FltSim": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "FltSim": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "FltSim": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "FltSim": "0.0",
        },
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
    "Far Part": {
      "fields": [
        "Date",
        "91",
        "135",
        "121",
      ],
      "data": [
        {
          "Date": "Total Brought forward",
          "91": "0.0",
          "135": "0.0",
          "121": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "91": "0.0",
          "135": "0.0",
          "121": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "91": "0.0",
          "135": "0.0",
          "121": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "91": "0.0",
          "135": "0.0",
          "121": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "91": "0.0",
          "135": "0.0",
          "121": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "91": "0.0",
          "135": "0.0",
          "121": "0.0",
        },
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
    "Activities": {
      "fields": [
        "Date",
        "Bomb Buck",
        "fire Boat",
        "Hoist",
        "Rescure",
        "Search"
      ],
      "data": [
        {
          "Date": "Total Brought forward",
          "Bomb Buck": "0.0",
          "fire Boat": "0.0",
          "Hoist": "0.0",
          "Rescure": "0.0",
          "Search": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Bomb Buck": "0.0",
          "fire Boat": "0.0",
          "Hoist": "0.0",
          "Rescure": "0.0",
          "Search": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Bomb Buck": "0.0",
          "fire Boat": "0.0",
          "Hoist": "0.0",
          "Rescure": "0.0",
          "Search": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Bomb Buck": "0.0",
          "fire Boat": "0.0",
          "Hoist": "0.0",
          "Rescure": "0.0",
          "Search": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Bomb Buck": "0.0",
          "fire Boat": "0.0",
          "Hoist": "0.0",
          "Rescure": "0.0",
          "Search": "0.0",
        },
        {
          "Date": "1/9/2023 12:00:00 AM",
          "Bomb Buck": "0.0",
          "fire Boat": "0.0",
          "Hoist": "0.0",
          "Rescure": "0.0",
          "Search": "0.0",
        },
        {
          "total_this_page" : "15.4",
          "total_as_of_this_page" : "15.4",
        }
      ]
    },
  }.obs;

  List<Widget> tabList = [];

  List<Widget> tabBarViewList = [];

  var buildingTab = false.obs;

  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    NotificationHelper.notificationInitialize(flutterLocalNotificationsPlugin: flutterLocalNotificationsPlugin);
    flightLogAltTabController = TabController(length: tabList.length, vsync: this);
    await buildTable();
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

  buildTable() async{
    await createTabs();
    await buildTabBarWidget();
  }

  createTabs() {
    buildingTab.value = true;
    print(flightLogAltJson2);
    print(flightLogAltJson2.keys);

    for(int i = 0; i<flightLogAltJson2.keys.length; i++){
      tabList.add(Tab(text: flightLogAltJson2.keys.elementAt(i),));
    }

    flightLogAltTabController = TabController(length: tabList.length, vsync: this);
    buildingTab.value = false;
  }

  buildTabBarWidget() {
    for(int i = 0; i<flightLogAltJson2.values.length; i++){
      print(flightLogAltJson2.values.elementAt(i));
    }
  }
}

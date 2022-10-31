import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_layout_rnd/routes/app_pages.dart';
import 'dart:convert';

import 'package:webview_flutter/webview_flutter.dart';

class SplashLogic extends GetxController {
  var designModel;
  var showLoading = false.obs;

  var demoJson = {
    "design": [
      {
        "label": "column A",
        "isMultiple" : false,
        "column": []
      },

      {
        "label": "column C",
        "isMultiple" : true,
        "column": [
          "column B1",
          "column B2",
          "column B3"
        ]
      },

      {
        "label": "column B",
        "isMultiple" : false,
        "column": []
      },

      {
        "label": "column E",
        "isMultiple" : true,
        "column": [
          "column E1",
          "column E2",
        ]
      },

      {
        "label": "column D",
        "isMultiple" : false,
        "column": []
      }
    ],

    "data": [
      [
        {
          "label": "1000",
          "isMultiple": false,
          "column": []
        },
        {
          "label": "",
          "isMultiple": true,
          "column": [
            "1331",
            "121343",
            "45445"
          ]
        },
        {
          "label": "453534",
          "isMultiple": false,
          "column": []
        },
        {
          "label": "",
          "isMultiple": true,
          "column": [
            "324234",
            "2342.65"
          ]
        },
        {
          "label": "32423",
          "isMultiple": false,
          "column": []
        }
      ],
      [
        {
          "label": "2000",
          "isMultiple": false,
          "column": []
        },
        {
          "label": "",
          "isMultiple": true,
          "column": [
            "1331",
            "121343",
            "45445"
          ]
        },
        {
          "label": "253534",
          "isMultiple": false,
          "column": []
        },
        {
          "label": "",
          "isMultiple": true,
          "column": [
            "324234",
            "2342.65"
          ]
        },
        {
          "label": "32423",
          "isMultiple": false,
          "column": []
        }
      ]
    ]
  };

  List<Widget> widgetList = [];

  var widgetJson = [
    {
      "type" : "textfield",
      "label" : "Username",
      "hint" : "Enter your username",
      "dataType" : "text",
      "value" : [],
    },
    {
      "type" : "textfield", //checkbox,radio,datetime picker,dropdown
      "label" : "Password",
      "hint" : "Enter your password",
      "dataType" : "password",
      "value" : [], //dropdown,checkbox,radio
    },
    {
      "type" : "dropdown", //checkbox,radio,datetime picker,dropdown
      "label" : "Select one item",
      "hint" : "",
      "dataType" : "",
      "value" : ["1","2","3"], //dropdown,checkbox,radio
    }
  ];

  /*late WebViewController webController;

  var script = """<script type='text/javascript'>
        function fun() {
      Print.postMessage("1122323");
    }
    </script>""".obs;

  var emptyScript = "".obs;

  var body = """<body>
    <h3> This is an example of using onclick attribute in HTML. </h3>
    <p> Click the following button to see the effect. </p>
    <button onclick = "fun()">Click me</button>
    </body>""".obs;

  var emptyBody = "".obs;

  var htmlData = r"""
    <h1>Table support:</h1>
    <table>
    <colgroup>
    <col width="50%" />
    <col span="2" width="25%" />
    </colgroup>
    <thead>
    <tr><th>One</th><th>Two</th><th>Three</th></tr>
    </thead>
    <tbody>
    <tr>
    <td rowspan='2'>Rowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan</td><td>Data</td><td>Data</td>
    </tr>
    <tr>
    <td colspan="2"><img alt='Google' src='https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' /></td>
    </tr>
    </tbody>
    <tfoot>
    <tr><td>fData</td><td>fData</td><td>fData</td></tr>
    </tfoot>
    </table>""";
*/

  @override
  onInit() async{
    // TODO: implement onReady
    super.onInit();
    print("on Init");
    await onGenerateWidget();
    print(widgetList);
    Get.offAllNamed(Routes.DASHBOARD);
  }

  @override
  onReady() async{
    // TODO: implement onReady
    super.onReady();
    print("on ready");
    //await getHTMLData();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  onGenerateWidget() {
    for(int i = 0; i<widgetJson.length; i++){
      switch(widgetJson[i]["type"]){
        case "textfield":
          if(widgetJson[i]["dataType"] == "text"){
            widgetList.add(TextField());
          }
          else if(widgetJson[i]["dataType"] == "password"){
            widgetList.add(TextField(
              obscureText: true,
            ));
          }
          continue;

        case "dropdown":
          List dataValue = widgetJson[i]["value"] as List;
          widgetList.add(Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: dataValue.length,
              itemBuilder: (context, index) {
                return Text(dataValue[index]);
              },
            ),
          ));
          continue;
      }
    }
  }

  // getHTMLData() async{
  //   showLoading.value = true;
  //   emptyScript.value = script.value;
  //   emptyBody.value = body.value;
  //   await Future.delayed(Duration(seconds: 5));
  //   showLoading.value = false;
  //   await reload();
  // }
  //
  // reload() async{
  //   await webController.reload();
  // }
}


class DesignModel {
  DesignModel({
    this.design,
  });

  final List<Design>? design;

  factory DesignModel.fromMap(Map<String, dynamic> json,key) => DesignModel(
    design: json[key] == null ? null : List<Design>.from(json[key].map((x) => Design.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "design": design == null ? null : List<dynamic>.from(design!.map((x) => x.toMap())),
  };
}

class Design {
  Design({
    this.label,
    this.isMultiple,
    this.column,
  });

  final String? label;
  final bool? isMultiple;
  final List<String>? column;

  factory Design.fromMap(Map<String, dynamic> json) => Design(
    label: json["label"] == null ? null : json["label"],
    isMultiple: json["isMultiple"] == null ? null : json["isMultiple"],
    column: json["column"] == null ? null : List<String>.from(json["column"].map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "label": label == null ? null : label,
    "isMultiple": isMultiple == null ? null : isMultiple,
    "column": column == null ? null : List<dynamic>.from(column!.map((x) => x)),
  };
}

class DataModel {
  DataModel({
    this.data,
  });

  final List<List<Data>>? data;

  factory DataModel.fromMap(Map<String, dynamic> json,key) => DataModel(
    data: json[key] == null ? null : List<List<Data>>.from(json[key].map((x) => List<Data>.from(x.map((x) => Data.fromMap(x))))),
  );

  Map<String, dynamic> toMap() => {
    "data": data == null ? null : List<dynamic>.from(data!.map((x) => List<dynamic>.from(x.map((x) => x.toMap())))),
  };
}

class Data {
  Data({
    this.label,
    this.isMultiple,
    this.column,
  });

  final String? label;
  final bool? isMultiple;
  final List<String>? column;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    label: json["label"] == null ? null : json["label"],
    isMultiple: json["isMultiple"] == null ? null : json["isMultiple"],
    column: json["column"] == null ? null : List<String>.from(json["column"].map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "label": label == null ? null : label,
    "isMultiple": isMultiple == null ? null : isMultiple,
    "column": column == null ? null : List<dynamic>.from(column!.map((x) => x)),
  };
}


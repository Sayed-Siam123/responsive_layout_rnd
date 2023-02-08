import 'dart:convert';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_layout_rnd/helper/internet_checker_helper/internet_checker_helper_logic.dart';
import 'package:responsive_layout_rnd/modules/spalsh/splash_logic.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Container(
//   color: Colors.red,
//   height: 20,
//   child: Marquee(
//     text: 'Some sample text that takes some space Some sample text that takes some space Some sample text that takes some space.',
//     style: TextStyle(fontWeight: FontWeight.bold),
//     scrollAxis: Axis.horizontal,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     blankSpace: 50.0,
//     // velocity: 100.0,
//     // startPadding: 100.0,
//     // accelerationDuration: Duration(seconds: 1),
//     // accelerationCurve: Curves.linear,
//     // decelerationDuration: Duration(milliseconds: 500),
//     // decelerationCurve: Curves.easeOut,
//   ),
// ),
// const SizedBox(height: SizeConstant.CONTENTSPACING*3,),  marque example

class SplashMobilePortrait extends GetView<SplashLogic> {
  final SizingInformation? sizingInformation;

  const SplashMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text("Text"),
          ],
        ),
      ),
    );

  }

  /*@override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();

    var designModel = DesignModel.fromMap(controller.demoJson, "design");
    var dataModel = DataModel.fromMap(controller.demoJson, "data");

    *//*var index = """<!DOCTYPE html>
    <html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    ${controller.emptyScript.value == "" ? "" : controller.emptyScript.value}
    </head>
    ${controller.emptyBody.value == "" ? "" : controller.body.value}
    </html>""";*//*

    return SafeArea(
      child: Scaffold(
        body: DataTable2(
            columnSpacing: 2,
            horizontalMargin: 2,
            minWidth: 1500,
            dividerThickness: 0,
            border: const TableBorder(
              top: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
              left: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.black),
              horizontalInside: BorderSide(color: Colors.black),
              verticalInside: BorderSide(color: Colors.black),
            ),
            dataRowColor: MaterialStateProperty.resolveWith((states) {
              // If the button is pressed, return green, otherwise blue
              if (states.contains(MaterialState.pressed)) {
                return Colors.white;
              }
              return Colors.white;
            }),
            fixedColumnsColor: Colors.blue,
            showCheckboxColumn: true,
            headingRowColor: MaterialStateProperty.resolveWith((states) {
              // If the button is pressed, return green, otherwise blue
              if (states.contains(MaterialState.pressed)) {
                return Colors.white;
              }
              return Colors.white;
            }),
            columns: designModel.design!.map((e) => DataColumn2(
              fixedWidth: e.isMultiple == false ? 100 : (100.0 * e.column!.length), //if single then 100 if multiple then single size * column length
              label: e.isMultiple == false ? Center(child: Text(e.label.toString())) : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const SizedBox(height: 8,),
                Text(e.label.toString()),
                const Divider(color: Colors.black87,thickness: 1,height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for(int i = 0; i < e.column!.length; i++) ...[
                          Center(child: Text(e.column![i])),
                          //e.column!.indexOf(e.column![i]) != (e.column!.length-1) ? VerticalDivider(color: Colors.black87,thickness: 1, width: 0) : Visibility(visible: false,child: VerticalDivider(color: Colors.black87,thickness: 1, width: 0)),
                        ],
                      ],
                    ),
                  ),
                ),]),
              )).toList(),

            rows: List<DataRow>.generate(
                dataModel.data!.length, (index) => DataRow(
                cells: dataModel.data![index].map((e) {
                  return !e.isMultiple! ? DataCell(Center(child: Text(e.label.toString())))
                      : DataCell(Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          for(int i = 0; i < e.column!.length; i++) ...[
                            SizedBox(width: 50,child: Center(child: Text(e.column![i])),),
                            //e.column!.indexOf(e.column![i]) != (e.column!.length-1) ? VerticalDivider(color: Colors.black87,thickness: 1, width: 0) : Visibility(visible: false,child: VerticalDivider(color: Colors.black87,thickness: 1, width: 0)),
                          ],
                        ],
                    ),
                  ));
                }).toList(),
            ))),
        *//*body: Obx(() {
          return !controller.showLoading.value ? WebView(
            initialUrl: 'about:blank',
            javascriptMode: JavascriptMode.unrestricted,
            javascriptChannels: Set.from([
              JavascriptChannel(
                name: 'Print',
                onMessageReceived: (JavascriptMessage message) {
                  print('REL NUMBER IS : ${message.message}');
                },
              ),
            ]),
            onWebViewCreated: (WebViewController webViewController) async {
              controller.webController = webViewController;
              // String fileContent = await rootBundle.loadString('assets/index.html');
              controller.webController.loadUrl(Uri.dataFromString(
                  '\r$index', mimeType: 'text/html',
                  encoding: Encoding.getByName('utf-8')).toString());
            },
            zoomEnabled: false,
          ) : CircularProgressIndicator();
        }),*//*
      ),
    );
  }*/
}

/*r'''
              <!DOCTYPE html>
              <html>
              <head>
              <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <script type='text/javascript'>
              function fun() {
                  Print.postMessage("1122323");
              }
              </script>
              </head>
              <body>
              <h3> This is an example of using onclick attribute in HTML. </h3>
              <p> Click the following button to see the effect. </p>
              <button onclick = "fun()">Click me</button>
              </body>
            </html>
            '''*/

class SplashMobileLandscape extends GetView<SplashLogic> {
  final SizingInformation? sizingInformation;

  const SplashMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();

    var designModel = DesignModel.fromMap(controller.demoJson, "design");
    var dataModel = DataModel.fromMap(controller.demoJson, "data");

    return SafeArea(
      child: Scaffold(
        body: DataTable2(
            columnSpacing: 2,
            horizontalMargin: 2,
            minWidth: 1500,
            dividerThickness: 0,
            border: const TableBorder(
              top: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
              left: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.black),
              horizontalInside: BorderSide(color: Colors.black),
              verticalInside: BorderSide(color: Colors.black),
            ),
            dataRowColor: MaterialStateProperty.resolveWith((states) {
              // If the button is pressed, return green, otherwise blue
              if (states.contains(MaterialState.pressed)) {
                return Colors.white;
              }
              return Colors.white;
            }),
            fixedColumnsColor: Colors.blue,
            showCheckboxColumn: true,
            headingRowColor: MaterialStateProperty.resolveWith((states) {
              // If the button is pressed, return green, otherwise blue
              if (states.contains(MaterialState.pressed)) {
                return Colors.white;
              }
              return Colors.white;
            }),
            columns: designModel.design!
                .map((e) =>
                DataColumn2(
                  fixedWidth: e.isMultiple == false ? 200 : 350,
                  label: e.isMultiple == false
                      ? Center(child: Text(e.label.toString()))
                      : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(e.label.toString()),
                        const Divider(
                            color: Colors.black87,
                            thickness: 1,
                            height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                for (int i = 0;
                                i < e.column!.length;
                                i++) ...[
                                  Center(child: Text(e.column![i])),
                                  //e.column!.indexOf(e.column![i]) != (e.column!.length-1) ? VerticalDivider(color: Colors.black87,thickness: 1, width: 0) : Visibility(visible: false,child: VerticalDivider(color: Colors.black87,thickness: 1, width: 0)),
                                ],
                              ],
                            ),
                          ),
                        ),
                      ]),
                ))
                .toList(),
            rows: List<DataRow>.generate(
                dataModel.data!.length,
                    (index) =>
                    DataRow(
                      cells: dataModel.data![index].map((e) {
                        return !e.isMultiple!
                            ? DataCell(Center(child: Text(e.label.toString())))
                            : DataCell(Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              for (int i = 0;
                              i < e.column!.length;
                              i++) ...[
                                SizedBox(
                                  width: 50,
                                  child:
                                  Center(child: Text(e.column![i])),
                                ),
                                //e.column!.indexOf(e.column![i]) != (e.column!.length-1) ? VerticalDivider(color: Colors.black87,thickness: 1, width: 0) : Visibility(visible: false,child: VerticalDivider(color: Colors.black87,thickness: 1, width: 0)),
                              ],
                            ],
                          ),
                        ));
                      }).toList(),
                    ))),
      ),
    );
  }
}

/*[
                  dataModel.design![index].isMultiple! == false ? DataCell(Center(child: Text(dataModel.design![index].label.toString()))) : DataCell(Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for(int i = 0; i < dataModel.design![index].column!.length; i++) ...[
                          SizedBox(width: 50,child: Text('B' * (10 - (index + 5) % 10))),
                          //Text(dataModel.design![index].column![i].toString()),
                          //e.column!.indexOf(e.column![i]) != (e.column!.length-1) ? VerticalDivider(color: Colors.black87,thickness: 1, width: 0) : Visibility(visible: false,child: VerticalDivider(color: Colors.black87,thickness: 1, width: 0)),
                        ],
                      ],
                      // children: [
                      //   SizedBox(width: 50,child: Text('B' * (10 - (index + 5) % 10))),
                      //   VerticalDivider(color: Colors.black87,thickness: 1),
                      //   SizedBox(width: 50,child: Text('B' * (10 - (index + 5) % 10))),
                      //   VerticalDivider(color: Colors.black87,thickness: 1),
                      //   SizedBox(width: 50,child: Text('B' * (10 - (index + 5) % 10))),
                      // ],
                    ),
                  )),

              DataCell(Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 50,child: Text('B' * (10 - (index + 5) % 10))),
                        VerticalDivider(color: Colors.black87,thickness: 1),
                        SizedBox(width: 50,child: Text('B' * (10 - (index + 5) % 10))),
                        VerticalDivider(color: Colors.black87,thickness: 1),
                        SizedBox(width: 50,child: Text('B' * (10 - (index + 5) % 10))),
                      ],
                    ),
                  )),
                  DataCell(Center(child: Text('C' * (10 - index % 10)))),

                      DataCell(Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(width: 50,child: Text('B' * (10 - (index + 5) % 10))),
                            VerticalDivider(color: Colors.black87,thickness: 1),
                            SizedBox(width: 50,child: Text('B' * (10 - (index + 5) % 10))),
                          ],
                        ),
                      )),
                  DataCell(Center(child: Text('D' * (10 - index % 10)))),
                ]*/

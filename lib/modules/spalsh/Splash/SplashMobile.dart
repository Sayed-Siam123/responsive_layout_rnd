import 'package:data_table_2/data_table_2.dart';
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
        body: DataTable2(
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 1500,
            border: TableBorder(
              // top: BorderSide(color: Colors.red),
              // bottom: BorderSide(color: Colors.red),
              // left: BorderSide(color: Colors.red),
              // right: BorderSide(color: Colors.red),
              horizontalInside: BorderSide(color: Colors.red),
              verticalInside: BorderSide(color: Colors.red),
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
            columns: [
              DataColumn2(
                label: Text('Column A'),
                fixedWidth: 200,
              ),
              DataColumn2(
                fixedWidth: 300,
                label: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 3,),
                    Text('Column B'),
                    Divider(color: Colors.black),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Column B'),
                        Text('Column B'),
                        Text('Column B'),
                      ],
                    )
                  ],
                ),
              ),
            ],
            rows: List<DataRow>.generate(
                100,
                    (index) => DataRow(cells: [
                  DataCell(Text('A' * (10 - index % 10))),
                  DataCell(Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('B' * (10 - (index + 5) % 10)),
                      Text('B' * (10 - (index + 5) % 10)),
                      Text('B' * (10 - (index + 5) % 10)),
                    ],
                  )),
                ]))),
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



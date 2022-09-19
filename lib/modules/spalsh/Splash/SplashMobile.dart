import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_layout_rnd/helper/internet_checker_helper/internet_checker_helper_logic.dart';
import 'package:responsive_layout_rnd/modules/spalsh/splash_logic.dart';

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
  const SplashMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();

    var designModel = DesignModel.fromMap(controller.demoJson);

    //print(designModel);

    // for(int i = 0; i<designModel.design!.length;i++){
    //   print(designModel.design![i].column);
    // }

    return SafeArea(
      child: Scaffold(
        body: DataTable2(
            columnSpacing: 2,
            horizontalMargin: 2,
            minWidth: 1500,
            dividerThickness: 0,
            border: TableBorder(
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
              label: e.isMultiple == false ? Center(child: Text(e.label.toString())) : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                SizedBox(height: 3,),
                Text(e.label.toString()),
                Divider(color: Colors.black87,thickness: 1,height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for(int i = 0; i < e.column!.length; i++) ...[
                          Text(e.column![i]),
                          e.column!.indexOf(e.column![i]) != (e.column!.length-1) ? VerticalDivider(color: Colors.black87,thickness: 1, width: 0) : SizedBox(),
                        ],
                        // VerticalDivider(color: Colors.black87,thickness: 1, width: 0),
                      ],

                      //   Text('Column B'),
                      //   VerticalDivider(color: Colors.black87,thickness: 1),
                      //   Text('Column B'),
                      //   VerticalDivider(color: Colors.black87,thickness: 1),
                      //   Text('Column B'),
                    ),
                  ),
                ),]),
                fixedWidth: e.isMultiple == false ? 200 : 350,
              )).toList(),





             /* DataColumn2(
                label: Center(child: Text('Column A')),
                fixedWidth: 200,
              ),
              DataColumn2(
                fixedWidth: 300,
                label: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 3,),
                    Text('Column B'),
                    Divider(color: Colors.black87,thickness: 1,height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Column B'),
                            VerticalDivider(color: Colors.black87,thickness: 1),
                            Text('Column B'),
                            VerticalDivider(color: Colors.black87,thickness: 1),
                            Text('Column B'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              DataColumn2(
                label: Center(child: Text('Column C')),
                fixedWidth: 200,
              ),
              DataColumn2(
                label: Center(child: Text('Column D')),
                fixedWidth: 200,
              ),*/
            rows: List<DataRow>.generate(
                100,
                    (index) => DataRow(cells: [
                  DataCell(Center(child: Text('A' * (10 - index % 10)))),
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
        body: DataTable2(
            columnSpacing: 2,
            horizontalMargin: 12,
            minWidth: 1500,
            dividerThickness: 0,
            border: TableBorder(
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
            columns: [
              DataColumn2(
                label: Center(child: Text('Column A')),
                fixedWidth: 200,
              ),
              DataColumn2(
                fixedWidth: 300,
                label: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 3,),
                    Text('Column B'),
                    Divider(color: Colors.black87,thickness: 1,height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Column B'),
                            VerticalDivider(color: Colors.black87,thickness: 1),
                            Text('Column B'),
                            VerticalDivider(color: Colors.black87,thickness: 1),
                            Text('Column B'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              DataColumn2(
                label: Center(child: Text('Column C')),
                fixedWidth: 200,
              ),
              DataColumn2(
                label: Center(child: Text('Column D')),
                fixedWidth: 200,
              ),
            ],
            rows: List<DataRow>.generate(
                100,
                    (index) => DataRow(cells: [
                  DataCell(Center(child: Text('A' * (10 - index % 10)))),
                  DataCell(Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  DataCell(Center(child: Text('D' * (10 - index % 10)))),
                ]))),
      ),
    );
  }
}



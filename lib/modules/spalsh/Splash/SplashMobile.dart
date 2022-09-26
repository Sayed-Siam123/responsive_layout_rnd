import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
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

    var designModel = DesignModel.fromMap(controller.demoJson,"design");
    var dataModel = DataModel.fromMap(controller.demoJson,"data");

    return SafeArea(
      child: Scaffold(
        /*body: DataTable2(
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
            ))),*/
        body: SingleChildScrollView(
          child: HtmlWidget(
            // the first parameter (`html`) is required
            """
    <h1>Table support:</h1>
    <table>
    <colgroup>
    <col width="50%" />
    <col span="2" width="25%" />
    </colgroup>
    <thead>
    <tr class='table-row'><th>One</th><th>Two</th><th>Three</th></tr>
    </thead>
    <tbody>
    <tr rel='123'>
    <td rowspan='2'>Rowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan</td><td>Data</td><td>Data</td>
    </tr>
    <tr rel='1244'>
    <td colspan="2"><img alt='Google' src='https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' /></td>
    </tr>
    </tbody>
    <tfoot>
    <tr rel='1234343'><td>fData</td><td>fData</td><td>fData</td></tr>
    </tfoot>
    </table>""",

            // all other parameters are optional, a few notable params:

            // specify custom styling for an element
            // see supported inline styling below
            customStylesBuilder: (element) {
              if (element.classes.contains('foo')) {
                return {'color': 'red'};
              }

              else if (element.classes.contains('table-row')) {
                return {'color': 'red'};
              }

              return null;
            },

            // render a custom widget
            customWidgetBuilder: (element) {
              if (element.attributes['foo'] == 'bar') {
                //return FooBarWidget();
              }

              return null;
            },

            // turn on selectable if required (it's disabled by default)
            isSelectable: true,

            // these callbacks are called when a complicated element is loading
            // or failed to render allowing the app to render progress indicator
            // and fallback widget
            onErrorBuilder: (context, element, error) => Text('$element error: $error'),
            onLoadingBuilder: (context, element, loadingProgress) => CircularProgressIndicator(),

            // this callback will be triggered when user taps a link
            onTapUrl: (url) {
              print('tapped $url');
              return true;
            },

            // select the render mode for HTML body
            // by default, a simple `Column` is rendered
            // consider using `ListView` or `SliverList` for better performance
            renderMode: RenderMode.column,

            // set the default styling for text
            textStyle: TextStyle(fontSize: 14),

            // turn on `webView` if you need IFRAME support (it's disabled by default)
            webView: true,
            onSelectionChanged: (selection, cause) {
              print(selection);
            },
          ),
        ),
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

    var designModel = DesignModel.fromMap(controller.demoJson,"design");
    var dataModel = DataModel.fromMap(controller.demoJson,"data");

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
              fixedWidth: e.isMultiple == false ? 200 : 350,
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



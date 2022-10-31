import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_layout_rnd/shared/widgets/input_field.dart';

class DashboardLogic extends GetxController {

  List<Widget> demographics = [];
  List<Widget> flightInfoInputs = [];
  List<Widget> activities = [];



  List<TextEditingController> flightInfoInputsControllers = [];

  var textController = TextEditingController();

  var flightJson = [];

  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();

    //on init -> generate -> textEditingCOntroller()....

    //on init -> generate -> demographics,flightinfo,activities widget
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

  generateFlightInfoWidget(){
    for(int i = 0; i<7; i++){
      /*flightInfoInputs.add(
          //TextField will go here
          row(
            children: [
              copy widget
              TextField(flightInfoInputsControllers[i]) widget
              +/- widget -->
              clear widget
            ]
          )
      );*/
    }
    generateFlightInfoMap();
  }

  generateDemographicsWidgets(){

  }

  generateActivitiesWidgets(){

  }

  generateFlightInfoInputsController(){
    //Flight info textfield -> dynamic way te TextEditingController()
  }

  generateFlightInfoMap() {
    for(int i = 0; i<7; i++){
      flightJson.add({
        "text" : flightInfoInputsControllers[i].text,
      });
    }

    print(flightJson);
  }


}

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constant/ConstantFunctions.dart';
import '../utils/SizeConfig.dart';

abstract class SizeConstant{
  static const double ROOTCONTAINERSPACING = 25.0;
  static const double CONTENTSPACING = 10.0;
  static const double INNERPADDING = 15.0;
  static const double LISTITEMRADIUS = 10.0;
  static const double GRIDITEMRADIUS = 5.0;
  static const double BOXRADIUS = 25.0; //10.0
  static const double ICONCONTAINERRADIUS = 15.0; //10.0
  static const double APPBARRADIUS = 30.0;
  static const double ELEVATION = 5.0;
  static const double BUTTONRADIUS = 5.0;
  static const double ICONSIZE = 20.0;
  static const double TEXTBOXRADIUS = 10.0;
  static const double DIALOGBOXRADIUS = 10.0;
  static const double SWITCHBOXRADIUS = 5.0;


  //TEXT SIZE
  static const double APPBARTITLESIZEEXTRALARGE = 45.0;
  static const double APPBARTITLESIZELARGE = 11.0;
  static const double EXTRALARGETEXT = 35.0;
  static const double LARGETEXT = 25.0;
  static const double EXTRAMEDIUMTEXT = 18.0;
  static const double MEDIUMTEXT = 15.0;
  static const double SMALLTEXT = 12.0;
  static const double EXTRASMALLTEXT = 8.0;

  static const String TITLE = "title";
  static const String TITLE2 = "title2";
  static const String SUBTITLE = "subtitle";
  static const String BODY = "body";
  static const String HINT = "hint";
  static const String BUTTON = "button";
  static const String APPBARTITLE = "appbartitle";
  static const String GRIDLISTTILE = "gridListTileFont";
  static const String MANCATFONT = "manCatFont";
  static const String EXTRASMALLHINT = "extraSmallHint";
  static const String SMALLHINT = "smallHint";
  static const String DIALOGBUTTONTEXT = "d_b_text";

  //icon
  static const String EXTRALARGEICON = "extra_large_icon";
  static const String LARGEICON = "large_icon";
  static const String MEDIUMICON = "medium_icon";
  static const String SMALLICON = "small_icon";

  static fontSizes({context, SizingInformation? sizingInformation, type}){
    //TODO:: type = title,subtitle,body,hint,button,appbartitle

    var value = 0.0;

    if(!FunctionsConstant.isTablet(context: context,sizingInformation: sizingInformation)){
      if(FunctionsConstant.orientation(context: Get.context!) == 0){
        //for portrait mobile
        switch(type){
          case "title":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.LARGETEXT, Get.height);
            break;

          case "title2":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT, Get.height);
            break;

          case "subtitle":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT, Get.height);
            break;

          case "body":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT, Get.height);
            break;

          case "hint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.SMALLTEXT, Get.height);
            break;

          case "button":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.SMALLTEXT, Get.height);
            break;

          case "appbartitle":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.APPBARTITLESIZELARGE+4, Get.height);
            break;

          case "gridListTileFont":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.SMALLTEXT, Get.height);
            break;

          case "manCatFont":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.SMALLTEXT, Get.height);
            break;

          case "extraSmallHint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRASMALLTEXT+2, Get.height);
            break;

          case "smallHint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRASMALLTEXT+5, Get.height);
            break;

          case "d_b_text":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT, Get.height);
            break;

          default:
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRASMALLTEXT, Get.height);
            break;
        }
      }
      else{
        //for landscape mobile
        switch(type){
          case "title":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRALARGETEXT+10, Get.height);
            break;

          case "title2":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRALARGETEXT+15, Get.height);
            break;

          case "subtitle":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.LARGETEXT, Get.height);
            break;

          case "body":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRAMEDIUMTEXT, Get.height);
            break;

          case "button":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.LARGETEXT, Get.height);
            break;

          case "appbartitle":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.APPBARTITLESIZEEXTRALARGE+4, Get.height);
            break;

          case "gridListTileFont":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRALARGETEXT+10, Get.height);
            break;

          case "manCatFont":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRALARGETEXT+20, Get.height);
            break;

          case "extraSmallHint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRALARGETEXT, Get.height);
            break;

          case "smallHint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRALARGETEXT+10, Get.height);
            break;

          case "d_b_text":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRALARGETEXT+15, Get.height);
            break;

          default:
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.SMALLTEXT, Get.height);
            break;
        }
      }
    }//mobile

    else{
      if(FunctionsConstant.orientation(context: Get.context!) == 0){
        //for portrait tablet
        switch(type){
          case "title":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.LARGETEXT, Get.height);
            break;

          case "title2":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT+5, Get.height);
            break;

          case "subtitle":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT, Get.height);
            break;

          case "body":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT, Get.height);
            break;

          case "hint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.SMALLTEXT, Get.height);
            break;

          case "button":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.SMALLTEXT, Get.height);
            break;

          case "appbartitle":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.APPBARTITLESIZELARGE+2, Get.height);
            break;

          case "gridListTileFont":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT+3, Get.height);
            break;

          case "manCatFont":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRAMEDIUMTEXT, Get.height);
            break;

          case "extraSmallHint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT+2, Get.height);
            break;

          case "smallHint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT+6, Get.height);
            break;

          case "d_b_text":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT+2, Get.height);
            break;

          default:
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRASMALLTEXT, Get.height);
            break;
        }
      }
      else{
        //for landscape tablet
        switch(type){
          case "title":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRALARGETEXT, Get.height);
            break;

          case "title2":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT, Get.height);
            break;

          case "subtitle":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.LARGETEXT, Get.height);
            break;

          case "body":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRAMEDIUMTEXT, Get.height);
            break;

          case "button":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.LARGETEXT, Get.height);
            break;

          case "appbartitle":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.APPBARTITLESIZEEXTRALARGE, Get.height);
            break;

          case "gridListTileFont":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.LARGETEXT, Get.height);
            break;

          case "manCatFont":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.EXTRAMEDIUMTEXT, Get.height);
            break;

          case "extraSmallHint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT+2, Get.height);
            break;

          case "smallHint":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT+6, Get.height);
            break;

          case "d_b_text":
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.MEDIUMTEXT+4, Get.height);
            break;

          default:
            value = const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.SMALLTEXT, Get.height);
            break;
        }
      }
    }//tablet

    return value;
  }

  static iconSizes({context, SizingInformation? sizingInformation, type}){
    //TODO:: type = large_icon,medium_icon,small_icon,extra_large_icon

    var value = 0.0;

    if(!FunctionsConstant.isTablet(context: context,sizingInformation: sizingInformation)){
      if(FunctionsConstant.orientation(context: Get.context!) == 0){
        //for portrait mobile
        switch(type){
          case "extra_large_icon":
            value = 34;
            break;

          case "large_icon":
            value = 24;
            break;

          case "medium_icon":
            value = 18;
            break;

          case "small_icon":
            value = 13;
            break;

          default:
            value = 10;
            break;
        }
      }
      else{
        //for landscape mobile
        switch(type){
          case "extra_large_icon":
            value = 38;
            break;

          case "large_icon":
            value = 40;
            break;

          case "medium_icon":
            value = 24;
            break;

          case "small_icon":
            value = 18;
            break;

          default:
            value = 13;
            break;
        }
      }
    }//mobile
    else{
      if(FunctionsConstant.orientation(context: Get.context!) == 0){
        //for portrait tablet
        switch(type){
          case "extra_large_icon":
            value = 45;
            break;

          case "large_icon":
            value = 24;
            break;

          case "medium_icon":
            value = 18;
            break;

          case "small_icon":
            value = 13;
            break;

          default:
            value = 10;
            break;
        }
      }
      else{
        //for landscape tablet
        switch(type){
          case "extra_large_icon":
            value = 45;
            break;

          case "large_icon":
            value = 40;
            break;

          case "medium_icon":
            value = 24;
            break;

          case "small_icon":
            value = 18;
            break;

          default:
            value = 13;
            break;
        }
      }
    }//tablet

    return value;
  }
}
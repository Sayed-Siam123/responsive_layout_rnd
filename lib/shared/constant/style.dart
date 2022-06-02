import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import 'const.dart';


TextStyle sectionTitle(){
  return  TextStyle(
      fontSize: sectionTitleFontSize,
      fontWeight: FontWeight.w900,
      color: ColorConstants.sectionTitleColor,
      letterSpacing: 0.18,
      height: 1.5
  );
}
TextStyle sectionTitleSmall(){
  return  TextStyle(
      fontSize: sectionTitleFontSize-2,
      fontWeight: FontWeight.w400,
      color: ColorConstants.sectionTitleColor,
      letterSpacing: 0.18,
      height: 1.5
  );
}
TextStyle sectionSubTitle(){
  return  TextStyle(
      fontSize: sectionTitleFontSize,
      fontWeight: FontWeight.w400,
      color: ColorConstants.sectionTitleColor.withOpacity(0.5),
      letterSpacing: 0.18,
      height: 1.5
  );
}
TextStyle navTextStyle(){
  return TextStyle(color: ColorConstants.black,fontSize: navFontSize, fontWeight: FontWeight.w500,height: 1.3);
}
TextStyle appSubtitleText() {
  return TextStyle(
      fontWeight: FontWeight.w400,
      color: ColorConstants.white,
      letterSpacing: 0.18,
      height: 1.5);
}
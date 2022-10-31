import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../shared/constants/ConstantSize.dart';
import '../shared/constants/colors.dart';

abstract class TextFieldConstant{
  static textField({FormFieldState<dynamic>? field,hintText,isPassword,obscureTextShow=true,obscureTextShowFunc = null,TextEditingController? controller = null,SizingInformation? sizingInformation,fontSizeType}){
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      style: Theme.of(Get.context!).textTheme.bodyText2!.copyWith(
        color: ColorConstants.TEXTBLACK,
        fontWeight: FontWeight.normal,
        fontSize: SizeConstant.fontSizes(context: Get.context!,sizingInformation: sizingInformation,type: fontSizeType),
      ),
      onChanged: (String? value){
        if(value != ""){
          field.didChange(value);
        }
        else{
          field.reset();
        }
      },
      //fontSize: const AdaptiveTextSize().getadaptiveTextSize(Get.context!, SizeConstant.SMALLTEXT, Get.height),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorConstants.TEXTBLACK,
          fontSize: SizeConstant.fontSizes(context: Get.context!,sizingInformation: sizingInformation,type: fontSizeType),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.BLACK.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(SizeConstant.TEXTBOXRADIUS),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.BLACK.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(SizeConstant.TEXTBOXRADIUS),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.BLACK.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(SizeConstant.TEXTBOXRADIUS),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorConstants.RED),
          borderRadius: BorderRadius.circular(SizeConstant.TEXTBOXRADIUS),
        ),
        errorText: field!.errorText,
        suffixIcon: isPassword ? IconButton(
            splashRadius: 1,
            onPressed: () => obscureTextShowFunc(),
            icon: Icon(obscureTextShow ? Feather.eye : Feather.eye_off,color: ColorConstants.BLACK.withOpacity(0.5),)) : const SizedBox(),
      ),
      obscureText: obscureTextShow,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/const.dart';
import '../../constant/style.dart';
import '../../constants/colors.dart';
import '../../utils/SizeConfig.dart';

openLoginBottomModal() {
  return showModalBottomSheet(
      context: Get.context!,
      builder: (builder){
        return Container(
            height: heightPx(height: Get.height,value: 10),
            width: Get.width,
            decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: sectionSpacing * 3,
                ),
                Text('Greetings!',
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic)),
                SizedBox(
                  height: sectionSpacing * 1.5,
                ),
                Text('Do you want to Login/Signup now?', style: sectionSubTitle().copyWith(
                  color: ColorConstants.black,
                  fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context, 16,Get.height),
                )),
                SizedBox(
                  height: sectionSpacing * 3,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              //Get.offAllNamed(Routes.LOGIN,arguments: [false,Routes.LOGIN]);
                            },
                            child: Container(
                              height: Get.height / rootContainerSpacing,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(5),
                                color: ColorConstants.backgroundSecondary,
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: sectionTitleSmall()
                                      .copyWith(
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(
                                        Get.context!, 14,Get.height),
                                    color: ColorConstants.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: sectionSpacing,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              //Get.offAllNamed(Routes.SIGNUP);
                            },
                            child: Container(
                              height: Get.height /
                                  rootContainerSpacing,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(5),
                                color: ColorConstants.black,
                              ),
                              // padding: EdgeInsets.symmetric(
                              //     vertical: 17, horizontal: 60),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Signup',
                                    style: sectionTitleSmall()
                                        .copyWith(
                                      fontSize: AdaptiveTextSize()
                                          .getadaptiveTextSize(
                                          Get.context!, 14,Get.height),
                                      color: ColorConstants.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: sectionSpacing * 2,
                ),
                InkWell(
                  onTap: () {
                    Get.back(closeOverlays: true);
                  },
                  child: Text(
                    'Skip for now',
                    style: sectionTitleSmall().copyWith(
                      color: ColorConstants.anotherWay,
                      fontSize: AdaptiveTextSize()
                          .getadaptiveTextSize(
                          Get.context!, 12,Get.height),),
                  ),
                ),
                SizedBox(
                  height: sectionSpacing*3,
                )
              ],
            ));
      }
  );
}
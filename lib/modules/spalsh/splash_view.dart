import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_layout_rnd/helper/internet_checker_helper/internet_checker_helper_logic.dart';
import 'package:responsive_layout_rnd/modules/spalsh/Splash/SplashMobile.dart';
import 'package:responsive_layout_rnd/modules/spalsh/Splash/SplashTablet.dart';

import 'splash_logic.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ScreenTypeLayout(
        //breakpoints: ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
        mobile: OrientationLayoutBuilder(
          portrait: (context) => SplashMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) => SplashMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: SplashTablet(sizingInformation: sizingInformation),
      ),
    );
  }
}

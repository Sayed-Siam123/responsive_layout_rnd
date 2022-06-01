import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_view_mobile.dart';
import 'home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ScreenTypeLayout(
        //breakpoints: ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
        mobile: OrientationLayoutBuilder(
          portrait: (context) => HomeMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) => HomeMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: HomeViewTablet(sizingInformation: sizingInformation),
      ),
    );
  }
}

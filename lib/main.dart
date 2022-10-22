import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsive_layout_rnd/routes/app_pages.dart';
import 'package:responsive_layout_rnd/theme/theme_data.dart';
import 'package:form_builder_validators/localization/l10n.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 800, tablet: 550, watch: 200),
  );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //builder: EasyLoading.init(),
      theme: ThemeConfig.lightTheme,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      smartManagement: SmartManagement.keepFactory,
      title: 'Responsive Layout RND',
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
      ],
    );
  }
}

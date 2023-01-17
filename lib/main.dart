import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsive_layout_rnd/modules/splash_screen/splash_screen_provider.dart';
import 'package:responsive_layout_rnd/modules/splash_screen/splash_screen_view.dart';
import 'package:responsive_layout_rnd/routes/app_pages.dart';
import 'package:responsive_layout_rnd/theme/theme_data.dart';
import 'package:form_builder_validators/localization/l10n.dart';


final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashScreenProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //builder: EasyLoading.init(),
        theme: ThemeConfig.lightTheme,
        home: const SplashScreenPage(),
        title: 'Responsive Layout RND',
        localizationsDelegates: const [
          FormBuilderLocalizations.delegate,
        ],
      ),
    );
  }
}

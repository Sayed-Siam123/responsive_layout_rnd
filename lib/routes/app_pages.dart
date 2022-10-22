import 'package:get/get.dart';
import 'package:responsive_layout_rnd/helper/internet_checker_helper/internet_checker_helper_binding.dart';
import 'package:responsive_layout_rnd/modules/dashboard/dashboard_binding.dart';
import 'package:responsive_layout_rnd/modules/dashboard/dashboard_view.dart';
import 'package:responsive_layout_rnd/modules/spalsh/splash_binding.dart';
import 'package:responsive_layout_rnd/modules/spalsh/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      //binding: SplashBinding(),
      bindings: [
        SplashBinding(),
        InternetCheckerHelperBinding(),
      ]
    ),

    GetPage(
        name: Routes.DASHBOARD,
        page: () => DashboardPage(),
        //binding: SplashBinding(),
        bindings: [
          DashboardBinding(),
          InternetCheckerHelperBinding(),
        ]
    ),

  ];
}



// GetPage(
//     name: Routes.HOME,
//     page: () => HomeScreen(),
//     binding: HomeBinding(),
//     children: [
//       GetPage(name: Routes.CARDS, page: () => CardsScreen()),
//     ]),


// static const FAVOURITES = '/favourites';
// static const ORDERS = '/orders';
// static const REPORT = '/report';
// static const INVITE_FRIEND = '/invite_friend';
// static const TALK_TO_MANAGEMENT = '/talk_to_management';
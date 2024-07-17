import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation/app/wine/ui/wine_detail_screen.dart';

import '../main/ui/main_screen.dart';
import '../app/wine/bindings/wine_binding.dart';
import '../app/wine/ui/wine_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      participatesInRootNavigator: true,
      name: Routes.MAIN,
      page: () => const MainScreen(),
      bindings: [
        WineBinding(),
      ],
      children: [
        GetPage(
          participatesInRootNavigator: true,
          name: Routes.WINE,
          page: () => const WinePage(),
        ),
      ],
    ),
    GetPage(
      participatesInRootNavigator: true,
      name: Routes.WINE_DETAIL,
      page: () => const WineDetailScreen(),
      bindings: [
        WineBinding(),
      ],
    ),
  ];
}

import 'package:get/get.dart';

import '../app/root/pages/root_page.dart';
import '../app/wine/bindings/wine_binding.dart';
import '../app/wine/pages/wine_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      participatesInRootNavigator: true,
      name: Routes.ROOT,
      page: () => const RootPage(),
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
  ];
}

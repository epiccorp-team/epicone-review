import 'package:epicone_review/app/auth/bindings/auth_binding.dart';
import 'package:epicone_review/app/wine/bindings/wine_purchase_binding.dart';
import 'package:epicone_review/app/wine/models/wine.dart';
import 'package:epicone_review/app/wine/pages/wine_purchase_page.dart';
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
        AuthBinding(),
        WineBinding(),
      ],
      children: [
        GetPage(
          participatesInRootNavigator: true,
          name: Routes.WINE,
          page: () => const WinePage(),
        ),
        GetPage(
          name: Routes.WINE_PURCHASE,
          page: () => WinePurchasePage(),
          arguments: Wine(),
          transition: Transition.rightToLeft,
          binding: WinePurchaseBinding(),
        ),
      ],
    ),
  ];
}

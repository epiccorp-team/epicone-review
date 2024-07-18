import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation/bindings/purchase_binding.dart';
import 'package:presentation/ui/customer/login_screen.dart';
import 'package:presentation/ui/customer/my_page.dart';
import 'package:presentation/ui/order/order_complete_screen.dart';
import 'package:presentation/ui/order/order_screen.dart';
import 'package:presentation/ui/product/wine_detail_screen.dart';

import '../ui/shop/main_screen.dart';
import '../bindings/wine_binding.dart';
import '../ui/shop/wine_page.dart';

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
    ),
    GetPage(
      participatesInRootNavigator: true,
      name: Routes.MY_PAGE,
      page: () => const MyPage(),
    ),
    GetPage(
      participatesInRootNavigator: true,
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
    ),
    GetPage(
      participatesInRootNavigator: true,
      name: Routes.ORDER,
      page: () => const OrderScreen(),
      binding: PurchaseBinding(),
    ),
    GetPage(
      participatesInRootNavigator: true,
      name: Routes.ORDER_COMPLETE,
      page: () => const OrderCompleteScreen(),
    ),
  ];
}

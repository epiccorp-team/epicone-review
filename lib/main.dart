import 'package:epicone_review/router/app_pages.dart';
import 'package:epicone_review/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/root/bindings/root_binding.dart';
import 'app/root/controllers/root_controller.dart';

void main() {
  runApp(const MyApp());

  RootBinding().dependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final RootController rootController = RootController.to;

    return Obx(
      () => GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        themeMode:
            rootController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
        initialRoute: Routes.ROOT,
        getPages: AppPages.routes,
      ),
    );
  }
}

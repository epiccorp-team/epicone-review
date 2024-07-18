import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/main_controller.dart';
import 'router/app_pages.dart';
import 'theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final MainController rootController = MainController.to;

    return Obx(
      () => GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        themeMode:
            rootController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
        initialRoute: Routes.MAIN,
        getPages: AppPages.routes,
      ),
    );
  }
}

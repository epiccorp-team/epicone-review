import 'package:epicone_review/app/root/controllers/root_controller.dart';
import 'package:epicone_review/router/app_pages.dart';
import 'package:epicone_review/theme.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
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

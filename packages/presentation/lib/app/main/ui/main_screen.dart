import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:presentation/app/my_page/ui/my_page.dart';
import 'package:presentation/bottom_navigation_bar.dart';

import '../../../router/app_pages.dart';
import '../../wine/ui/wine_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pages = [
    const WinePage(),
    const MyPage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Obx(() {
          return _pages[GetBottomNavigationController.to.index.value];
        }),
        bottomNavigationBar: const GetBottomNavigationBar(),
      ),
    );
  }
}

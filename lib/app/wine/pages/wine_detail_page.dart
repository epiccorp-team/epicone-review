import 'package:epicone_review/app/auth/controllers/auth_controller.dart';
import 'package:epicone_review/app/wine/pages/wine_purchase_page.dart';
import 'package:epicone_review/router/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/wine.dart';

class WineDetailPage extends StatefulWidget {
  final Wine wine;
  const WineDetailPage({
    super.key,
    required this.wine,
  });

  @override
  State<WineDetailPage> createState() => _WineDetailPageState();
}

class _WineDetailPageState extends State<WineDetailPage> {
  final AuthController _authController = AuthController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.wine.wine,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.network(widget.wine.image),
            ),
            SizedBox(height: 20),
            Text(
              widget.wine.winery,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                if (_authController.user.value == null) {
                  Get.dialog(
                    AlertDialog(
                      content: Text('로그인이 필요합니다.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('확인'),
                        ),
                      ],
                    ),
                  );
                  return;
                }

                Get.toNamed(
                  Routes.WINE_PURCHASE,
                  arguments: widget.wine,
                );
              },
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.circular(13.0),
                ),
                child: Text(
                  'Purchase',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

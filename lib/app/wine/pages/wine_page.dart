import 'package:epicone_review/app/auth/controllers/auth_controller.dart';
import 'package:epicone_review/app/wine/pages/wine_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../root/controllers/root_controller.dart';
import '../controllers/wine_controller.dart';
import '../models/wine.dart';

class WinePage extends StatefulWidget {
  const WinePage({super.key});

  @override
  State<WinePage> createState() => _WinePageState();
}

class _WinePageState extends State<WinePage> {
  final RootController _rootController = RootController.to;
  final WineController _wineController = WineController.to;
  final AuthController _authController = AuthController.to;

  List<Wine> _wines = [];

  @override
  void initState() {
    _wines = _wineController.wines;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Wines'),
              floating: true,
              pinned: true,
              expandedHeight: 110,
              actions: [
                _authController.user.value == null
                    ? _authController.isLoadingLogin.value
                        ? Center(child: CircularProgressIndicator())
                        : InkWell(
                            onTap: () {
                              _authController.login();
                            },
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.0),
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                              child: Text('Sign In'),
                            ),
                          )
                    : Row(
                        children: [
                          Text(
                              '${_authController.user.value?.name}님 ${_authController.user.value?.pointRemained}P'),
                          SizedBox(
                            width: 8.0,
                          ),
                          InkWell(
                            onTap: () {
                              _authController.logout();
                            },
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.0),
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                              child: Text('Sign Out'),
                            ),
                          ),
                        ],
                      ),
                GestureDetector(
                  onTap: () {
                    _rootController
                        .updateTheme(!_rootController.isDarkMode.value);
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                    child: Icon(
                      Icons.change_circle,
                      size: 30,
                    ),
                  ),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50.0),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 10, bottom: 0),
                        child: SizedBox(
                          width: double.infinity,
                          child: CupertinoTextField(
                            keyboardType: TextInputType.text,
                            placeholder: 'search',
                            onChanged: (value) {
                              setState(() {
                                final regex = RegExp(value.toLowerCase());
                                _wines = _wineController.wines.where((p0) {
                                  return regex
                                          .hasMatch(p0.wine.toLowerCase()) ||
                                      regex.hasMatch(p0.winery.toLowerCase()) ||
                                      regex.hasMatch(p0.location.toLowerCase());
                                }).toList();
                              });
                            },
                            prefix: Padding(
                              padding: EdgeInsets.only(
                                  left: 9, top: 6, right: 9, bottom: 6),
                              child: Icon(
                                Icons.search,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 0, bottom: 40, left: 5, right: 5),
              sliver: SliverList.builder(
                itemBuilder: (context, index) {
                  final item = _wines[index];

                  return Card(
                    child: ListTile(
                      onTap: () {
                        Get.to(
                          () => WineDetailPage(
                            wine: item,
                          ),
                        );
                      },
                      title: Text(item.wine,
                          style: Theme.of(context).textTheme.titleLarge),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.winery,
                              style: Theme.of(context).textTheme.bodyLarge),
                          Text(item.location,
                              style: Theme.of(context).textTheme.bodyMedium),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, size: 15),
                                  SizedBox(width: 5),
                                  Text(item.rating!.average,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium),
                                ],
                              ),
                              SizedBox(width: 20),
                              Row(
                                children: [
                                  Icon(Icons.reviews, size: 15),
                                  SizedBox(width: 5),
                                  Text(item.rating!.reviews,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: _wines.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

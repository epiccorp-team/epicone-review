import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/wine.dart';

class WineDetailScreen extends StatefulWidget {
  const WineDetailScreen({
    super.key,
  });

  @override
  State<WineDetailScreen> createState() => _WineDetailScreenState();
}

class _WineDetailScreenState extends State<WineDetailScreen> {
  late Wine wine;

  @override
  void initState() {
    super.initState();
    wine = Get.arguments['wine'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          wine.wine,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(wine.image),
          ),
          SizedBox(height: 20),
          Text(
            wine.winery,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../wine/models/wine.dart';

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
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width / 5 * 4,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Purchase',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 30)),
        ],
      ),
    );
  }
}

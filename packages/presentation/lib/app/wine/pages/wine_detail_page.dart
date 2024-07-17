import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.wine.wine,
        ),
      ),
      body: Column(
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
        ],
      ),
    );
  }
}

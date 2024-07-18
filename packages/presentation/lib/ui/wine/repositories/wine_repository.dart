import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/wine.dart';

abstract class WineRepository {
  Future<List<Wine>> fetchWine();
}

class WineRepositoryImpl implements WineRepository {
  WineRepositoryImpl();

  @override
  Future<List<Wine>> fetchWine() async {
    Uri uri = Uri.parse('https://dev-api.epicone.co.kr/api/v1/review/wine');
    final result = await http.get(uri);

    var data =
        (jsonDecode(result.body) as List).map((e) => Wine.fromJson(e)).toList();

    return data;
  }
}

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/wine.dart';

abstract class WineRepository {
  Future<List<Wine>> fetchWine();
  Future<int> purchase({
    required Map<String, String> header,
    required Object body,
    int retryCnt = 3,
  });
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

  @override
  Future<int> purchase({
    required Map<String, String> header,
    required Object body,
    int retryCnt = 3,
  }) async {
    Uri uri = Uri.parse('https://dev-api.epicone.co.kr/api/v1/review/order');

    late http.Response res;

    for (var tryCtn = 0; tryCtn < retryCnt; tryCtn++) {
      try {
        res = await http.post(uri, headers: header, body: body);
        if (res.statusCode == 200) {
          return res.statusCode;
        }
        throw Exception('status code ${res.statusCode}');
      } catch (e) {
        await Future.delayed(Duration(seconds: 3));
      }
    }
    return res.statusCode;
  }
}

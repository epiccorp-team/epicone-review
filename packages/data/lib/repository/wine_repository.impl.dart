import 'dart:convert';

import 'package:domain/api_state.dart';
import 'package:domain/repository/wine_repository.dart';
import 'package:domain/entity/wine_entity.dart';
import 'package:http/http.dart' as http;

class WineRepositoryImpl implements WineRepository {
  WineRepositoryImpl();

  @override
  Future<ApiState<List<WineEntity>>> fetchWine() async {
    try {
      Uri uri = Uri.parse('https://dev-api.epicone.co.kr/api/v1/review/wine');
      final result = await http.get(uri);

      var data = (jsonDecode(result.body) as List)
          .map((e) => WineEntity.fromJson(e))
          .toList();

      return ApiState.success(data: data);
    } catch (e) {
      return ApiState.error();
    }
  }
}

import 'package:data/dto/purchase.dto.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'purchase.api.g.dart';

@RestApi(baseUrl: 'https://dev-api.epicone.co.kr/api/v1/')
abstract class PurchaseApi {
  factory PurchaseApi(Dio dio, {String? baseUrl}) = _PurchaseApi;

  @POST('/review/order')
  Future<PurchaseDto> purchase(
    @Header("Authorization") String token,
    @Body() Map<String, dynamic> map,
  );
}

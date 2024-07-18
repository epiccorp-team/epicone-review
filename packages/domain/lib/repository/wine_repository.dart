import 'package:domain/entity/wine_entity.dart';

import '../api_state.dart';

abstract class WineRepository {
  Future<ApiState<List<WineEntity>>> fetchWine();
}

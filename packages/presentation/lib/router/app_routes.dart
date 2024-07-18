// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  // 홈 영역
  static const MAIN = '/main';
  static const WINE = '/main/wine';
  static const WINE_DETAIL = '/main/wine/:id';

  // 회원 영역
  static const MY_PAGE = '/main/my_page';
  static const LOGIN = '/login';

  // 주문 영역
  static const ORDER = '/order';
}

// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const MAIN = '/main';
  static const WINE = '/wine';
  static const WINE_DETAIL = '/wine/:id';
  static const MY_PAGE = '/my_page';
}
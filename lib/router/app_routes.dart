part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const ROOT = '/';
  static const WINE = '/wine';
  static const WINE_DETAIL = '/wine/:id';
  static const WINE_PURCHASE = '/wine/purchase';
}

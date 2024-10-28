import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/widgets.dart';
import 'package:product/product.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class ProductDetailRouter extends _$ProductDetailRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ProductDetailRoute.page, path: '/movies/:id'),
      ];
}

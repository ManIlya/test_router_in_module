
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import '../features/product_list/product_list_widget.dart';
import 'package:product/product.dart';

part 'app_router.gr.dart';
@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Widget|ScreenWidget,Route')
class AppRouter extends _$AppRouter{

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ProductListRoute.page),
    AutoRoute(page: ProductDetailRoute.page),
  ];
}
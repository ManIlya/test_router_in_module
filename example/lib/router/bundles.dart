
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/widgets.dart';

import '../features/product_list/product_list_wm.dart';
import 'app_router.dart';

class ProductListRoute extends PageRouteInfo<ProductListRouteArgs> {
  ProductListRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
        BuildContext)
    wmFactory = defaultProductListWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
    ProductListRoute.name,
    args: ProductListRouteArgs(
      key: key,
      wmFactory: wmFactory,
    ),
    initialChildren: children,
  );

  static const String name = 'ProductListRoute';

  static const PageInfo<ProductListRouteArgs> page =
  PageInfo<ProductListRouteArgs>(name);
}
import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:example/router/app_router.dart';
import 'package:flutter/material.dart';
import 'product_list_model.dart';
import 'product_list_widget.dart';


abstract interface class IProductListWidgetModel implements IWidgetModel {
  List<Product> get products;

  void onTapProduct(int index);
}

ProductListWidgetModel defaultProductListWidgetModelFactory(BuildContext context) {
  return ProductListWidgetModel(ProductListModel());
}

class ProductListWidgetModel extends WidgetModel<ProductListWidget, ProductListModel>
    implements IProductListWidgetModel {
  @override
  final List<Product> products = List.generate(10, (index)=> Product(name: 'name_$index', price: index*100));


  ProductListWidgetModel(ProductListModel model):super(model);

  @override
  void onTapProduct(int index) {
    //context.router.push(ProductDetailRoute());
  }
}

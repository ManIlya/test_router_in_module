import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'product_detail_wm.dart';

@RoutePage()
class ProductDetailPage extends ElementaryWidget<IProductDetailWidgetModel> {
  const ProductDetailPage(this.product, {
    Key? key,
    WidgetModelFactory wmFactory = defaultProductDetailWidgetModelFactory,
  }) : super(wmFactory, key: key);
  final Product? product;

  @override
  Widget build(IProductDetailWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(title: Text(product?.name ?? 'Продукт'),),
      body: Center(child: Text('${product?.price}₽', style: const TextStyle(fontSize: 28),),),
    );
  }
}

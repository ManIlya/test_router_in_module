import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:example/features/product_list/product_list_model.dart';
import 'package:flutter/material.dart';
import 'product_list_wm.dart';
export  'product_list_wm.dart';

@RoutePage()
class ProductListWidget extends ElementaryWidget<IProductListWidgetModel> {
  const ProductListWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProductListWidgetModelFactory,
  }) : super(wmFactory, key: key);
  @override
  Widget build(IProductListWidgetModel wm) {
    return Scaffold(appBar: AppBar(title: const Text('Product list'),), body: ListView.builder(
      itemBuilder: (context, index){
        final product = wm.products[index];
        return ListTile(
          onTap: () => wm.onTapProduct(index),
          title: Text(product.name),
          trailing: Text('${product.price} ₽'),
        );
      }
      ,
      itemCount: wm.products.length,
    ),);
  }
}

ProductListWidgetModel defaultProductListWidgetModelFactory(BuildContext context) {
  return ProductListWidgetModel(ProductListModel());
}
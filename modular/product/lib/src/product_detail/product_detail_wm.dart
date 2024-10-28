import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'product_detail_model.dart';
import 'product_detail_widget.dart';

abstract interface class IProductDetailWidgetModel implements IWidgetModel {
}

ProductDetailWidgetModel defaultProductDetailWidgetModelFactory(BuildContext context) {
  return ProductDetailWidgetModel(ProductDetailModel());
}

// TODO: cover with documentation
/// Default widget model for ProductDetailWidget
class ProductDetailWidgetModel extends WidgetModel<ProductDetailPage, ProductDetailModel>
    implements IProductDetailWidgetModel {

  ProductDetailWidgetModel(super.model);
}

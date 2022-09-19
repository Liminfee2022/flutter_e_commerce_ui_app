import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/modules/Product.dart';

class Cart {
  final Product? product;
  final int? numberOfItems;

  Cart({@required this.product, @required this.numberOfItems});
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numberOfItems: 2),
  Cart(product: demoProducts[1], numberOfItems: 1),
  Cart(product: demoProducts[2], numberOfItems: 1),
  Cart(product: demoProducts[2], numberOfItems: 1),
  Cart(product: demoProducts[2], numberOfItems: 1),
  Cart(product: demoProducts[2], numberOfItems: 1),
  Cart(product: demoProducts[2], numberOfItems: 1),
];
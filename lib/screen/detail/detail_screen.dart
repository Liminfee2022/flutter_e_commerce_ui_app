import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/modules/Product.dart';
import 'package:flutter_e_commerce_app/screen/detail/widgets/body.dart';
import 'package:flutter_e_commerce_app/screen/detail/widgets/custom_app_bar.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/rounded_icon_btn.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail_screen";
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(
            rating: arguments.product!.rating,
          )),
      body: Body(product: arguments.product,),
    );
  }
}

class ProductDetailsArguments {
  final Product? product;

  ProductDetailsArguments({@required this.product});
}

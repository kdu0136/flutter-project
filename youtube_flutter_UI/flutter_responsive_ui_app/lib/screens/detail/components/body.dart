import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_app/models/Product.dart';
import 'package:flutter_responsive_ui_app/screens/detail/components/product_description.dart';
import 'package:flutter_responsive_ui_app/screens/detail/components/product_info.dart';
import 'package:flutter_responsive_ui_app/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenWidth
            :  SizeConfig.screenHeight - AppBar().preferredSize.height,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductInfo(product: product),
            Positioned(
              top: defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                press: () {},
              ),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 7.5,
              child: SafeArea(
                child: Hero(
                  tag: product.id,
                  child: Image.network(
                    product.image,
                    fit: BoxFit.cover,
                    height: defaultSize * 37.8,
                    width: defaultSize * 36.4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

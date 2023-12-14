import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/body.dart';

import '../../models/Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back-svgrepo-com.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search-svgrepo-com.svg',
              color: Colors.white,
            ),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset(
              'assets/icons/cart-shopping-svgrepo-com.svg',
              color: Colors.white,
            ), // Start here tmro, They don't show up on the app
            onPressed: () {}),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}

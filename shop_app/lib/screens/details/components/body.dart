import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // This gives the total size of the section
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("Color\n"),
                              ColorDot(
                                color: Color(0xFF356C95),
                              )
                            ],
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: kTextColor),
                              children: [
                                TextSpan(text: "Transmission"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

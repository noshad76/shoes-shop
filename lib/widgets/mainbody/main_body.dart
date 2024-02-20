import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/mainbody/offer_product.dart';

import 'chips.dart';
import 'product_grid.dart';

class MyBody extends StatelessWidget {
  const MyBody({super.key});
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    List<Color> colors = [
      const Color.fromARGB(255, 91, 131, 164),
      const Color.fromARGB(255, 144, 251, 148),
      const Color.fromARGB(255, 189, 97, 205),
      const Color.fromARGB(255, 87, 179, 255)
    ];

    return Stack(
      children: [
        OfferProduct(mediaQuery: mediaQuery),
        Chips(mediaQuery: mediaQuery),
        SeeAll(mediaQuery: mediaQuery),
        ProductsGrid(mediaQuery: mediaQuery, colors: colors)
      ],
    );
  }
}

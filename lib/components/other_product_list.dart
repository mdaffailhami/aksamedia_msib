import 'dart:math';

import 'package:aksamedia_msib/models/product.dart';
import 'package:aksamedia_msib/widgets/product_card.dart';
import 'package:flutter/material.dart';

class MyOtherProductList extends StatelessWidget {
  const MyOtherProductList({super.key});

  Widget getProductList(BuildContext context, String title, int totalProduct) {
    final randomNumberGenerator = Random();

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 18,
          runSpacing: 18,
          children: List.generate(totalProduct, (i) {
            return MyProductCard(
              showNewTag: randomNumberGenerator.nextBool(),
              product: Product(
                name: 'Beauty Set by Irvie',
                resellerPrice: 142400,
                stock: 142,
              ),
            );
          }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          getProductList(context, 'Produk lain dari Irvie group official', 2),
          const SizedBox(height: 20),
          getProductList(context, 'Produk Serupa', 4),
        ],
      ),
    );
  }
}

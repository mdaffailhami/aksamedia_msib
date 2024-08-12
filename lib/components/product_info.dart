import 'package:aksamedia_msib/components/share_product_sheet.dart';
import 'package:aksamedia_msib/constants.dart';
import 'package:flutter/material.dart';

class MyProductInfo extends StatelessWidget {
  const MyProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  'NEW ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text('Product Baru'),
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (_) => const MyShareProductSheet(),
            );
          },
          icon: const Icon(Icons.share_outlined),
          tooltip: 'Bagikan produk',
        )
      ],
    );

    final title = Text(
      'Beauty Set by Irvie',
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(fontWeight: FontWeight.bold),
    );

    final subtitleStyle = Theme.of(context)
        .textTheme
        .labelLarge
        ?.copyWith(color: const Color(0xFF848C8B));

    final subtitle = Text(
      'Irvie group official',
      style: Theme.of(context)
          .textTheme
          .labelLarge
          ?.copyWith(color: const Color(0xFF848C8B)),
    );

    final priceTitleStyle = Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(fontWeight: FontWeight.bold);

    final price = IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Rp178.000',
                style: priceTitleStyle,
              ),
              Text(
                'Harga Customer',
                style: subtitleStyle,
              ),
            ],
          ),
          const VerticalDivider(color: Colors.black),
          Column(
            children: [
              Text(
                'Rp142.400',
                style: priceTitleStyle,
              ),
              Text(
                'Harga Reseller',
                style: subtitleStyle,
              ),
            ],
          ),
        ],
      ),
    );

    final commission = Container(
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Center(
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Color(0xFF363939)),
              children: [
                TextSpan(text: 'Komisi '),
                TextSpan(
                    text: 'Rp35.600',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                TextSpan(text: ' (20%)'),
              ],
            ),
          ),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header,
          const SizedBox(height: 10),
          title,
          subtitle,
          const SizedBox(height: 22),
          price,
          const SizedBox(height: 22),
          commission,
        ],
      ),
    );
  }
}

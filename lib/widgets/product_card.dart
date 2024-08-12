import 'package:aksamedia_msib/constants.dart';
import 'package:aksamedia_msib/models/product.dart';
import 'package:aksamedia_msib/utils/format_rupiah.dart';
import 'package:aksamedia_msib/widgets/filled_button.dart';
import 'package:flutter/material.dart';

class MyProductCard extends StatelessWidget {
  const MyProductCard({
    super.key,
    required this.showNewTag,
    required this.product,
  });

  final bool showNewTag;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: SizedBox(
        width: 160,
        height: 254,
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/product.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    left: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: infoColor.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 10,
                        ),
                        child: Text(
                          '30% Komisi',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  !showNewTag
                      ? const SizedBox.shrink()
                      : Positioned(
                          top: 0,
                          right: 5,
                          child: Image.asset('assets/new-tag.png'),
                        ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 5),
                  Text(
                    product.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Harga reseller',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.outline),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Text(
                          formatRupiah(product.resellerPrice),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: successColor),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            const Icon(Icons.storefront_outlined, size: 16),
                            Text(
                              '${product.stock < 100 ? product.stock : '99+'} pcs',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: MyFilledButton(
                      onPressed: () {},
                      color: primaryColor,
                      child: const Text(
                        'Bagikan Produk',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

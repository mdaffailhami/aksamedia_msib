import 'package:aksamedia_msib/components/app_bar.dart';
import 'package:aksamedia_msib/components/other_product_list.dart';
import 'package:aksamedia_msib/components/product_bottom_section.dart';
import 'package:aksamedia_msib/components/product_desc.dart';
import 'package:aksamedia_msib/components/product_info.dart';
import 'package:aksamedia_msib/components/product_variants.dart';
import 'package:aksamedia_msib/cubits/product_carousel_index_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyProductScreen extends StatelessWidget {
  const MyProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyProductCarouselIndexCubit(),
      child: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                const MyProductCarousel(),
                SliverList(
                  delegate: SliverChildListDelegate([
                    const MyProductInfo(),
                    const SizedBox(height: 20),
                    const MyProductVariants(),
                    const SizedBox(height: 10),
                    const Divider(),
                    const MyProductDesc(),
                    const Divider(),
                    const SizedBox(height: 10),
                    const MyOtherProductList(),
                    const SizedBox(height: 68),
                  ]),
                )
              ],
            ),
            const MyProductBottomSection(),
          ],
        ),
      ),
    );
  }
}

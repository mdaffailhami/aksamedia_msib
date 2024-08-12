import 'package:aksamedia_msib/cubits/product_carousel_index_cubit.dart';
import 'package:aksamedia_msib/widgets/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyProductCarousel extends StatefulWidget {
  const MyProductCarousel({super.key});

  @override
  State<MyProductCarousel> createState() => _MyProductCarouselState();
}

class _MyProductCarouselState extends State<MyProductCarousel> {
  final _carouselController = PageController(initialPage: 0, keepPage: false);

  void _changeSlide(int index) {
    _carouselController.animateToPage(
      index,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    const height = 380.0;

    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final isScrolled =
            constraints.scrollOffset > height - kToolbarHeight - 10;
        final iconColor = isScrolled ? Colors.black : Colors.white;

        return SliverAppBar(
          pinned: true,
          floating: false,
          expandedHeight: height,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: isScrolled ? const Text('Beauty Set by Irvie') : null,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: iconColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.file_download_outlined,
                color: iconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: iconColor,
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                Positioned.fill(
                  child: Stack(
                    children: [
                      PageView(
                        controller: _carouselController,
                        onPageChanged: (index) {
                          context
                              .read<MyProductCarouselIndexCubit>()
                              .set(index);
                        },
                        children: List.generate(
                          4,
                          (i) {
                            return Image.asset(
                              'assets/product.jpeg',
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: BlocBuilder<MyProductCarouselIndexCubit, int>(
                          builder: (context, state) {
                            return MyCarouselIndicator(
                              index: state,
                              totalSlides: 4,
                              onTap: (index) => _changeSlide(index),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -1,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

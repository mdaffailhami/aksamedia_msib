import 'package:aksamedia_msib/cubits/carousel_index_cubit.dart';
import 'package:aksamedia_msib/widgets/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyIntroCarousel extends StatefulWidget {
  const MyIntroCarousel({super.key});

  @override
  State<MyIntroCarousel> createState() => _MyIntroCarouselState();
}

class _MyIntroCarouselState extends State<MyIntroCarousel> {
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
    return BlocListener<MyCarouselIndexCubit, int>(
      listener: (context, state) {
        _changeSlide(state);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.68,
        child: Stack(
          children: [
            PageView(
              controller: _carouselController,
              onPageChanged: (index) {
                context.read<MyCarouselIndexCubit>().set(index);
              },
              children: List.generate(
                3,
                (i) {
                  return Image.asset(
                    'assets/intro-${i + 1}.jpeg',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: BlocBuilder<MyCarouselIndexCubit, int>(
                builder: (context, state) {
                  return MyCarouselIndicator(
                    index: state,
                    totalSlides: 3,
                    onTap: (index) => _changeSlide(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

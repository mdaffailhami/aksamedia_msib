import 'package:flutter/material.dart';

class MyCarouselIndicator extends StatelessWidget {
  const MyCarouselIndicator({
    super.key,
    required this.index,
    required this.onTap,
  });

  final int index;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (i) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: () => onTap(i),
            child: AnimatedContainer(
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 250),
              width: i == index ? 20 : 4,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

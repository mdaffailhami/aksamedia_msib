import 'package:aksamedia_msib/constants.dart';
import 'package:flutter/material.dart';

class MyColorChoiceChip extends StatelessWidget {
  const MyColorChoiceChip({
    super.key,
    required this.selected,
    required this.color,
    required this.onPressed,
  });

  final bool selected;
  final Color color;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    const size = 44.0;

    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(size / 2),
          border: !selected ? null : Border.all(color: primaryColor, width: 2),
        ),
      ),
    );
  }
}

import 'package:aksamedia_msib/constants.dart';
import 'package:flutter/material.dart';

class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({
    super.key,
    required this.selected,
    required this.text,
    required this.onPressed,
  });

  final bool selected;
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFFE6E7E7);
    return RawChip(
      selected: selected,
      label: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      onPressed: () => onPressed(),
      showCheckmark: false,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      backgroundColor: color,
      selectedColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          width: 1.5,
          color: selected ? primaryColor : color,
        ),
      ),
    );
  }
}

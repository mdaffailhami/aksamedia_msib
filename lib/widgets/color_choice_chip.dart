import 'package:flutter/material.dart';

class MyColorChoiceChip extends StatelessWidget {
  const MyColorChoiceChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(22),
      ),
    );
  }
}

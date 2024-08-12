import 'package:flutter/material.dart';

class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({super.key});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      onSelected: (value) {},
      label: Text('Paket 1'),
      selected: false,
      // selectedColor: Colors.transparent,
      // bord
      padding: EdgeInsets.symmetric(horizontal: 12),
      showCheckmark: false,
    );
  }
}

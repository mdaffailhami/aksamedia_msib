import 'package:aksamedia_msib/widgets/choice_chip.dart';
import 'package:aksamedia_msib/widgets/color_choice_chip.dart';
import 'package:flutter/material.dart';

class MyProductVariants extends StatefulWidget {
  const MyProductVariants({super.key});

  @override
  State<MyProductVariants> createState() => _MyProductVariantsState();
}

class _MyProductVariantsState extends State<MyProductVariants> {
  // State management with ValueNotifier
  final _selectedSizeIndex = ValueNotifier<int>(0);
  final _selectedColorIndex = ValueNotifier<int>(0);

  final _sizes = ['Paket 1', 'Paket 2'];
  final _colors = const [Color(0xFFDDB69A), Color(0xFF5B3E36)];

  @override
  Widget build(BuildContext context) {
    final sizeListWidget = ValueListenableBuilder(
      valueListenable: _selectedSizeIndex,
      builder: (context, value, _) {
        return Row(
          children: List.generate(_sizes.length, (i) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: MyChoiceChip(
                selected: i == value,
                text: _sizes[i],
                onPressed: () {
                  _selectedSizeIndex.value = i;
                },
              ),
            );
          }),
        );
      },
    );

    final colorListWidget = ValueListenableBuilder(
      valueListenable: _selectedColorIndex,
      builder: (context, value, _) {
        return Row(
          children: List.generate(_colors.length, (i) {
            return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: MyColorChoiceChip(
                  selected: i == value,
                  color: _colors[i],
                  onPressed: () {
                    _selectedColorIndex.value = i;
                  },
                ));
          }),
        );
      },
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        decoration: BoxDecoration(
            border:
                Border.all(color: Theme.of(context).colorScheme.outlineVariant),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ukuran'),
              const SizedBox(height: 6),
              sizeListWidget,
              const SizedBox(height: 12),
              const Text('Warna'),
              const SizedBox(height: 6),
              colorListWidget,
              const SizedBox(height: 12),
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: 'Stok : '),
                    TextSpan(
                      text: '99+ pcs',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
            ],
          ),
        ),
      ),
    );
  }
}

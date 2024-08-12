import 'package:aksamedia_msib/widgets/choice_chip.dart';
import 'package:aksamedia_msib/widgets/color_choice_chip.dart';
import 'package:flutter/material.dart';

class MyProductVariants extends StatelessWidget {
  const MyProductVariants({super.key});

  @override
  Widget build(BuildContext context) {
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
              Text('Ukuran'),
              SizedBox(height: 6),
              Row(
                children: [
                  MyChoiceChip(),
                  SizedBox(width: 10),
                  MyChoiceChip(),
                ],
              ),
              SizedBox(height: 12),
              Text('Warna'),
              SizedBox(height: 6),
              Row(
                children: [
                  const MyColorChoiceChip(),
                  SizedBox(width: 10),
                  const MyColorChoiceChip(),
                ],
              ),
              SizedBox(height: 12),
              RichText(
                text: TextSpan(
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
              SizedBox(height: 6),
            ],
          ),
        ),
      ),
    );
  }
}

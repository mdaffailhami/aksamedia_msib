import 'package:flutter/material.dart';

class MyShareProductSheet extends StatelessWidget {
  const MyShareProductSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      backgroundColor: Colors.white,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close_rounded,
                      size: 32,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Bagikan Produk',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ListTile(
                onTap: () {},
                title: const Text('Teks dan Link'),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                title: const Text('Gambar'),
              ),
              const Divider(),
              const SizedBox(height: 80),
            ],
          ),
        );
      },
    );
  }
}

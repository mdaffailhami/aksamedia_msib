import 'package:aksamedia_msib/constants.dart';
import 'package:aksamedia_msib/utils/copy_text.dart';
import 'package:flutter/material.dart';

class MyProductDesc extends StatefulWidget {
  const MyProductDesc({super.key});

  @override
  State<MyProductDesc> createState() => _MyProductDescState();
}

class _MyProductDescState extends State<MyProductDesc> {
  final _description =
      '*New Material*\nTerbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\nMenggunakan fit Relaxed Fit.\n-\nSIZE CHART RELAXED SHIRT. Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae molestias voluptatibus quidem sit asperiores aperiam fugiat, quisquam consequuntur quam commodi itaque ipsa, sequi, omnis nostrum. Deleniti maiores repellat quaerat ipsam?';

  int? _descMaxLines = 6;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Deskripsi',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              IconButton(
                onPressed: () => copyText(context, _description),
                icon: const Icon(Icons.copy_rounded, color: infoColor),
              ),
            ],
          ),
          Text(
            _description,
            maxLines: _descMaxLines,
            overflow: _descMaxLines == null ? null : TextOverflow.ellipsis,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                if (_descMaxLines != null) {
                  _descMaxLines = null;
                } else {
                  _descMaxLines = 6;
                }
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _descMaxLines == null ? 'Secukupnya' : 'Selengkapnya',
                  style: TextStyle(color: infoColor),
                ),
                Icon(
                    _descMaxLines == null
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: infoColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

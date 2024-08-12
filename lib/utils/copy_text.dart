import 'package:aksamedia_msib/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> copyText(BuildContext context, String text) async {
  try {
    await Clipboard.setData(ClipboardData(text: text));

    if (!context.mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Text is copied to your clipboard.',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: infoColor,
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: primaryColor,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Failed to copy text!',
          style: TextStyle(color: Theme.of(context).colorScheme.onError),
        ),
        backgroundColor: Theme.of(context).colorScheme.error,
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: primaryColor,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
}

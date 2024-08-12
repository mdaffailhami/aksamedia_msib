import 'package:aksamedia_msib/components/intro_body.dart';
import 'package:aksamedia_msib/components/intro_carousel.dart';
import 'package:aksamedia_msib/screens/product.dart';
import 'package:flutter/material.dart';

class MyIntroScreen extends StatefulWidget {
  const MyIntroScreen({super.key});

  @override
  State<MyIntroScreen> createState() => _MyIntroScreenState();
}

class _MyIntroScreenState extends State<MyIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            const MyIntroCarousel(),
            const MyIntroBody(),
            Positioned(
              top: 12,
              right: 10,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const MyProductScreen(),
                    ),
                  );
                },
                child: Text(
                  'Lewati',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: const Color(0xFF434747)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

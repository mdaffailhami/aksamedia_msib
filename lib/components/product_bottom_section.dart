import 'package:aksamedia_msib/constants.dart';
import 'package:aksamedia_msib/widgets/filled_button.dart';
import 'package:aksamedia_msib/widgets/outlined_button.dart';
import 'package:flutter/material.dart';

class MyProductBottomSection extends StatelessWidget {
  const MyProductBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 15,
                child: SizedBox(
                  height: 40,
                  child: MyOutlinedButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: const Text(
                      'Tambahkan ke toko',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 5,
                child: SizedBox(
                  height: 40,
                  child: MyFilledButton(
                    onPressed: () {},
                    color: primaryColor,
                    child: const Icon(Icons.shopping_cart_outlined),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

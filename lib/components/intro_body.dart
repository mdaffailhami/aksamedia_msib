import 'package:aksamedia_msib/constants.dart';
import 'package:aksamedia_msib/cubits/carousel_index_cubit.dart';
import 'package:aksamedia_msib/widgets/filled_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyIntroBody extends StatefulWidget {
  const MyIntroBody({super.key});

  @override
  State<MyIntroBody> createState() => _MyIntroBodyState();
}

class _MyIntroBodyState extends State<MyIntroBody> {
  final _texts = [
    [
      'Gratis Materi Belajar Menjadi Seller Handal',
      'Nggak bisa jualan?\nJangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
    ],
    [
      'Ribuan Produk dengan Kualitas Terbaik',
      'Tokorame menyediakan ribuan produk dengan kualitas derbaik dari seller terpercaya',
    ],
    [
      'Toko Online Unik Untuk Kamu Jualan',
      'Subdomain unik dan toko online profesional siap pakai',
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.32 + 30,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<MyCarouselIndexCubit, int>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Text(
                        _texts[state][0],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        _texts[state][1],
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: MyFilledButton(
                  color: primaryColor,
                  text: 'Selanjutnya',
                  onPressed: () {
                    context.read<MyCarouselIndexCubit>().increment();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

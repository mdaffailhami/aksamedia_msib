import 'package:aksamedia_msib/cubits/carousel_index_cubit.dart';
import 'package:aksamedia_msib/screens/intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aksamedia MSIB',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: BlocProvider(
        create: (_) => MyCarouselIndexCubit(),
        child: const MyIntroScreen(),
      ),
    );
  }
}

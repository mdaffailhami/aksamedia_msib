import 'package:flutter_bloc/flutter_bloc.dart';

class MyCarouselIndexCubit extends Cubit<int> {
  MyCarouselIndexCubit() : super(0);

  void set(int index) => emit(index);

  void increment() {
    if (state < 2) emit(state + 1);
  }
}

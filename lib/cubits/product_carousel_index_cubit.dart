import 'package:flutter_bloc/flutter_bloc.dart';

class MyProductCarouselIndexCubit extends Cubit<int> {
  MyProductCarouselIndexCubit() : super(0);

  void set(int index) => emit(index);

  void increment() {
    if (state < 2) {
      emit(state + 1);
    } else {
      emit(0);
    }
  }
}

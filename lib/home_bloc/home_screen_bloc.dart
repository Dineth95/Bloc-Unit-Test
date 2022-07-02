import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_unit_test_example/home_respository/repository.dart';
import 'package:bloc_unit_test_example/models/product_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final HomeRepository homeRepository;

  HomeScreenBloc({required this.homeRepository}) : super(HomeScreenInitial()) {
    on<GetHomeProducts>((event, emit) async {
      emit(HomeScrenLoading());
      try {
        List<ProductModel?>? list = await homeRepository.getHomeProducts();

        emit(HomeScreenProductsLoaded(list: list));
      } catch (e) {
        log(e.toString());
        emit(HomeScreenFailed(error: 'unknown error'));
      }
    });

    add(GetHomeProducts());
  }
}

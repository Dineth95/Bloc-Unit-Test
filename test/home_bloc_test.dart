import 'package:bloc_test/bloc_test.dart';
import 'package:bloc_unit_test_example/home_bloc/home_screen_bloc.dart';
import 'package:bloc_unit_test_example/home_respository/repository.dart';
import 'package:bloc_unit_test_example/models/product_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  group('Bloc Success Scenarios: ', () {
    late Dio dio;
    late DioAdapter dioAdapter;
    const homeScreenUrl = 'https://fakestoreapi.com/products';
    List<dynamic> data = [
      {
        "id": 1,
        "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        "price": 109.95,
        "description":
            "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
        "category": "men's clothing",
        "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      },
    ];

    setUp(() {
      dio = Dio();
      dioAdapter = DioAdapter(dio: dio);
      dio.httpClientAdapter = dioAdapter;
    });

    blocTest<HomeScreenBloc, HomeScreenState>(
      'When data is empty',
      setUp: (() {
        return dioAdapter.onGet(
          homeScreenUrl,
          (request) => request.reply(200, []),
        );
      }),
      build: () => HomeScreenBloc(homeRepository: HomeRepository(dio: dio)),
      wait: const Duration(milliseconds: 500),
      expect: () =>
          [HomeScrenLoading(), HomeScreenProductsLoaded(list: const [])],
    );

    blocTest<HomeScreenBloc, HomeScreenState>(
      'When data is not empty',
      setUp: (() {
        return dioAdapter.onGet(
          homeScreenUrl,
          (request) => request.reply(200, data),
        );
      }),
      build: () => HomeScreenBloc(homeRepository: HomeRepository(dio: dio)),
      wait: const Duration(milliseconds: 500),
      expect: () => [
        HomeScrenLoading(),
        HomeScreenProductsLoaded(list: [
          ProductModel((data) => data
            ..id = 1
            ..title = "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops"
            ..price = 109.95
            ..description =
                "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday"
            ..category = "men's clothing"
            ..image =
                "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg")
        ])
      ],
    );
  });

  group('Error scenarios: ', () {
    late Dio dio;
    late DioAdapter dioAdapter;
    const homeScreenUrl = 'https://fakestoreapi.com/products';

    setUp(() {
      dio = Dio();
      dioAdapter = DioAdapter(dio: dio);
      dio.httpClientAdapter = dioAdapter;
    });

    blocTest<HomeScreenBloc, HomeScreenState>(
      'emits failure at initial response is null',
      setUp: (() {
        return dioAdapter.onGet(
          homeScreenUrl,
          (request) => request.reply(200, null),
        );
      }),
      build: () => HomeScreenBloc(homeRepository: HomeRepository(dio: dio)),
      wait: const Duration(milliseconds: 500),
      expect: () =>
          [HomeScrenLoading(), HomeScreenFailed(error: 'unknown error')],
    );
  });
}

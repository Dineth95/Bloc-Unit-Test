import 'package:bloc_unit_test_example/home_respository/repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

///dependency innjection- Creates Singleton objects
final getIt = GetIt.instance;

void setup() async{
  getIt.registerLazySingleton(() => Dio());

  getIt.registerLazySingleton(() => HomeRepository(dio: getIt()));
}
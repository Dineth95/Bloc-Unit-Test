import 'package:bloc_unit_test_example/models/product_model.dart';
import 'package:dio/dio.dart';

class HomeRepository {
  final Dio dio;

  HomeRepository({required this.dio});

  Future<List<ProductModel?>> getHomeProducts() async {
    Response response = await dio.get('https://fakestoreapi.com/products');

    List<ProductModel>? productList = [];

    (response.data as List).toList().forEach((product) {
      ProductModel? productModel = ProductModel((data) => data
            ..id = product['id']
            ..category = product['category']
            ..image = product['image']
            ..description = product['description']
            ..title = product['title']
            ..price=product['price']
          );
      productList.add(productModel);
    });

    return productList.isEmpty ? [] : productList;
  }
}

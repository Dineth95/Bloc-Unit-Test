library serializers;

import 'package:bloc_unit_test_example/models/home_products_response_model.dart';
import 'package:bloc_unit_test_example/models/product_model.dart';
import 'package:bloc_unit_test_example/models/rating_model.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'serilizers.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor([
  ProductModel,
  RatingModel,
  HomeProductsResponseModel
])

final Serializers serializers = _$serializers;
library home_products_response_model;

import 'dart:convert';

import 'package:bloc_unit_test_example/models/product_model.dart';
import 'package:bloc_unit_test_example/models/serilizers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'home_products_response_model.g.dart';

abstract class HomeProductsResponseModel implements Built<HomeProductsResponseModel, HomeProductsResponseModelBuilder> {

  BuiltList<ProductModel>? get dataList;

  HomeProductsResponseModel._();

  factory HomeProductsResponseModel([void Function(HomeProductsResponseModelBuilder) updates]) = _$HomeProductsResponseModel;

  String toJson() {
    return json.encode(serializers.serializeWith(HomeProductsResponseModel.serializer, this));
  }

  static HomeProductsResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(HomeProductsResponseModel.serializer, json.decode(jsonString))!;
  }

  static Serializer<HomeProductsResponseModel> get serializer => _$homeProductsResponseModelSerializer;
}
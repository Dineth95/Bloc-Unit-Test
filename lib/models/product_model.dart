library product_model;

import 'dart:convert';

import 'package:bloc_unit_test_example/models/serilizers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_model.g.dart';

abstract class ProductModel implements Built<ProductModel, ProductModelBuilder> {
  // Fields
  int? get id;

  String? get title;

  double? get price;

  String? get description;

  String? get category;

  String? get image;

  //RatingModel? get rating;

  ProductModel._();

  factory ProductModel([void Function(ProductModelBuilder) updates]) = _$ProductModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ProductModel.serializer, this));
  }

  static ProductModel fromJson(String jsonString) {
    return serializers.deserializeWith(ProductModel.serializer, json.decode(jsonString))!;
  }

  static Serializer<ProductModel> get serializer => _$productModelSerializer;
}
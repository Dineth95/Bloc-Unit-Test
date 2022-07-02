library rating_model;

import 'dart:convert';

import 'package:bloc_unit_test_example/models/serilizers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_model.g.dart';

abstract class RatingModel implements Built<RatingModel, RatingModelBuilder> {
  // Fields
  double? get rate;

  double? get count;

  RatingModel._();

  factory RatingModel([void Function(RatingModelBuilder) updates]) = _$RatingModel;

  String toJson() {
    return json.encode(serializers.serializeWith(RatingModel.serializer, this));
  }

  static RatingModel fromJson(String jsonString) {
    return serializers.deserializeWith(RatingModel.serializer, json.decode(jsonString))!;
  }

  static Serializer<RatingModel> get serializer => _$ratingModelSerializer;
}
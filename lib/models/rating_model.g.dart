// GENERATED CODE - DO NOT MODIFY BY HAND

part of rating_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RatingModel> _$ratingModelSerializer = new _$RatingModelSerializer();

class _$RatingModelSerializer implements StructuredSerializer<RatingModel> {
  @override
  final Iterable<Type> types = const [RatingModel, _$RatingModel];
  @override
  final String wireName = 'RatingModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, RatingModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rate;
    if (value != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  RatingModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RatingModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$RatingModel extends RatingModel {
  @override
  final double? rate;
  @override
  final double? count;

  factory _$RatingModel([void Function(RatingModelBuilder)? updates]) =>
      (new RatingModelBuilder()..update(updates)).build();

  _$RatingModel._({this.rate, this.count}) : super._();

  @override
  RatingModel rebuild(void Function(RatingModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingModelBuilder toBuilder() => new RatingModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingModel && rate == other.rate && count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, rate.hashCode), count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RatingModel')
          ..add('rate', rate)
          ..add('count', count))
        .toString();
  }
}

class RatingModelBuilder implements Builder<RatingModel, RatingModelBuilder> {
  _$RatingModel? _$v;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  double? _count;
  double? get count => _$this._count;
  set count(double? count) => _$this._count = count;

  RatingModelBuilder();

  RatingModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rate = $v.rate;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingModel;
  }

  @override
  void update(void Function(RatingModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RatingModel build() {
    final _$result = _$v ?? new _$RatingModel._(rate: rate, count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

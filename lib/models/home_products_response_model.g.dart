// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_products_response_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeProductsResponseModel> _$homeProductsResponseModelSerializer =
    new _$HomeProductsResponseModelSerializer();

class _$HomeProductsResponseModelSerializer
    implements StructuredSerializer<HomeProductsResponseModel> {
  @override
  final Iterable<Type> types = const [
    HomeProductsResponseModel,
    _$HomeProductsResponseModel
  ];
  @override
  final String wireName = 'HomeProductsResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HomeProductsResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dataList;
    if (value != null) {
      result
        ..add('dataList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductModel)])));
    }
    return result;
  }

  @override
  HomeProductsResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeProductsResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dataList':
          result.dataList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$HomeProductsResponseModel extends HomeProductsResponseModel {
  @override
  final BuiltList<ProductModel>? dataList;

  factory _$HomeProductsResponseModel(
          [void Function(HomeProductsResponseModelBuilder)? updates]) =>
      (new HomeProductsResponseModelBuilder()..update(updates)).build();

  _$HomeProductsResponseModel._({this.dataList}) : super._();

  @override
  HomeProductsResponseModel rebuild(
          void Function(HomeProductsResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeProductsResponseModelBuilder toBuilder() =>
      new HomeProductsResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeProductsResponseModel && dataList == other.dataList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, dataList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeProductsResponseModel')
          ..add('dataList', dataList))
        .toString();
  }
}

class HomeProductsResponseModelBuilder
    implements
        Builder<HomeProductsResponseModel, HomeProductsResponseModelBuilder> {
  _$HomeProductsResponseModel? _$v;

  ListBuilder<ProductModel>? _dataList;
  ListBuilder<ProductModel> get dataList =>
      _$this._dataList ??= new ListBuilder<ProductModel>();
  set dataList(ListBuilder<ProductModel>? dataList) =>
      _$this._dataList = dataList;

  HomeProductsResponseModelBuilder();

  HomeProductsResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dataList = $v.dataList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeProductsResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeProductsResponseModel;
  }

  @override
  void update(void Function(HomeProductsResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeProductsResponseModel build() {
    _$HomeProductsResponseModel _$result;
    try {
      _$result = _$v ??
          new _$HomeProductsResponseModel._(dataList: _dataList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataList';
        _dataList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeProductsResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

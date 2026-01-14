// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemResponse {

 int get itemId; String get itemCode; String get nameKo; int get rarity; String get iconId; String get itemType; String get description;
/// Create a copy of ItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemResponseCopyWith<ItemResponse> get copyWith => _$ItemResponseCopyWithImpl<ItemResponse>(this as ItemResponse, _$identity);

  /// Serializes this ItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemResponse&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemCode, itemCode) || other.itemCode == itemCode)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.iconId, iconId) || other.iconId == iconId)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,itemCode,nameKo,rarity,iconId,itemType,description);

@override
String toString() {
  return 'ItemResponse(itemId: $itemId, itemCode: $itemCode, nameKo: $nameKo, rarity: $rarity, iconId: $iconId, itemType: $itemType, description: $description)';
}


}

/// @nodoc
abstract mixin class $ItemResponseCopyWith<$Res>  {
  factory $ItemResponseCopyWith(ItemResponse value, $Res Function(ItemResponse) _then) = _$ItemResponseCopyWithImpl;
@useResult
$Res call({
 int itemId, String itemCode, String nameKo, int rarity, String iconId, String itemType, String description
});




}
/// @nodoc
class _$ItemResponseCopyWithImpl<$Res>
    implements $ItemResponseCopyWith<$Res> {
  _$ItemResponseCopyWithImpl(this._self, this._then);

  final ItemResponse _self;
  final $Res Function(ItemResponse) _then;

/// Create a copy of ItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? itemCode = null,Object? nameKo = null,Object? rarity = null,Object? iconId = null,Object? itemType = null,Object? description = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,itemCode: null == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as int,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemResponse].
extension ItemResponsePatterns on ItemResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _ItemResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ItemResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int itemId,  String itemCode,  String nameKo,  int rarity,  String iconId,  String itemType,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemResponse() when $default != null:
return $default(_that.itemId,_that.itemCode,_that.nameKo,_that.rarity,_that.iconId,_that.itemType,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int itemId,  String itemCode,  String nameKo,  int rarity,  String iconId,  String itemType,  String description)  $default,) {final _that = this;
switch (_that) {
case _ItemResponse():
return $default(_that.itemId,_that.itemCode,_that.nameKo,_that.rarity,_that.iconId,_that.itemType,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int itemId,  String itemCode,  String nameKo,  int rarity,  String iconId,  String itemType,  String description)?  $default,) {final _that = this;
switch (_that) {
case _ItemResponse() when $default != null:
return $default(_that.itemId,_that.itemCode,_that.nameKo,_that.rarity,_that.iconId,_that.itemType,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemResponse implements ItemResponse {
  const _ItemResponse({required this.itemId, required this.itemCode, required this.nameKo, required this.rarity, required this.iconId, required this.itemType, required this.description});
  factory _ItemResponse.fromJson(Map<String, dynamic> json) => _$ItemResponseFromJson(json);

@override final  int itemId;
@override final  String itemCode;
@override final  String nameKo;
@override final  int rarity;
@override final  String iconId;
@override final  String itemType;
@override final  String description;

/// Create a copy of ItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemResponseCopyWith<_ItemResponse> get copyWith => __$ItemResponseCopyWithImpl<_ItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemResponse&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemCode, itemCode) || other.itemCode == itemCode)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.iconId, iconId) || other.iconId == iconId)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,itemCode,nameKo,rarity,iconId,itemType,description);

@override
String toString() {
  return 'ItemResponse(itemId: $itemId, itemCode: $itemCode, nameKo: $nameKo, rarity: $rarity, iconId: $iconId, itemType: $itemType, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ItemResponseCopyWith<$Res> implements $ItemResponseCopyWith<$Res> {
  factory _$ItemResponseCopyWith(_ItemResponse value, $Res Function(_ItemResponse) _then) = __$ItemResponseCopyWithImpl;
@override @useResult
$Res call({
 int itemId, String itemCode, String nameKo, int rarity, String iconId, String itemType, String description
});




}
/// @nodoc
class __$ItemResponseCopyWithImpl<$Res>
    implements _$ItemResponseCopyWith<$Res> {
  __$ItemResponseCopyWithImpl(this._self, this._then);

  final _ItemResponse _self;
  final $Res Function(_ItemResponse) _then;

/// Create a copy of ItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemCode = null,Object? nameKo = null,Object? rarity = null,Object? iconId = null,Object? itemType = null,Object? description = null,}) {
  return _then(_ItemResponse(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,itemCode: null == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as int,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

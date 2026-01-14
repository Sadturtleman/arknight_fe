// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operator_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OperatorRequest {

 String get code;
/// Create a copy of OperatorRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperatorRequestCopyWith<OperatorRequest> get copyWith => _$OperatorRequestCopyWithImpl<OperatorRequest>(this as OperatorRequest, _$identity);

  /// Serializes this OperatorRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OperatorRequest&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'OperatorRequest(code: $code)';
}


}

/// @nodoc
abstract mixin class $OperatorRequestCopyWith<$Res>  {
  factory $OperatorRequestCopyWith(OperatorRequest value, $Res Function(OperatorRequest) _then) = _$OperatorRequestCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$OperatorRequestCopyWithImpl<$Res>
    implements $OperatorRequestCopyWith<$Res> {
  _$OperatorRequestCopyWithImpl(this._self, this._then);

  final OperatorRequest _self;
  final $Res Function(OperatorRequest) _then;

/// Create a copy of OperatorRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OperatorRequest].
extension OperatorRequestPatterns on OperatorRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperatorRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperatorRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperatorRequest value)  $default,){
final _that = this;
switch (_that) {
case _OperatorRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperatorRequest value)?  $default,){
final _that = this;
switch (_that) {
case _OperatorRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperatorRequest() when $default != null:
return $default(_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code)  $default,) {final _that = this;
switch (_that) {
case _OperatorRequest():
return $default(_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code)?  $default,) {final _that = this;
switch (_that) {
case _OperatorRequest() when $default != null:
return $default(_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OperatorRequest implements OperatorRequest {
  const _OperatorRequest({required this.code});
  factory _OperatorRequest.fromJson(Map<String, dynamic> json) => _$OperatorRequestFromJson(json);

@override final  String code;

/// Create a copy of OperatorRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperatorRequestCopyWith<_OperatorRequest> get copyWith => __$OperatorRequestCopyWithImpl<_OperatorRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperatorRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OperatorRequest&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'OperatorRequest(code: $code)';
}


}

/// @nodoc
abstract mixin class _$OperatorRequestCopyWith<$Res> implements $OperatorRequestCopyWith<$Res> {
  factory _$OperatorRequestCopyWith(_OperatorRequest value, $Res Function(_OperatorRequest) _then) = __$OperatorRequestCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class __$OperatorRequestCopyWithImpl<$Res>
    implements _$OperatorRequestCopyWith<$Res> {
  __$OperatorRequestCopyWithImpl(this._self, this._then);

  final _OperatorRequest _self;
  final $Res Function(_OperatorRequest) _then;

/// Create a copy of OperatorRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(_OperatorRequest(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OperatorListRequest {

 int get skip; int get limit; int get rarity;
/// Create a copy of OperatorListRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperatorListRequestCopyWith<OperatorListRequest> get copyWith => _$OperatorListRequestCopyWithImpl<OperatorListRequest>(this as OperatorListRequest, _$identity);

  /// Serializes this OperatorListRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OperatorListRequest&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.rarity, rarity) || other.rarity == rarity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skip,limit,rarity);

@override
String toString() {
  return 'OperatorListRequest(skip: $skip, limit: $limit, rarity: $rarity)';
}


}

/// @nodoc
abstract mixin class $OperatorListRequestCopyWith<$Res>  {
  factory $OperatorListRequestCopyWith(OperatorListRequest value, $Res Function(OperatorListRequest) _then) = _$OperatorListRequestCopyWithImpl;
@useResult
$Res call({
 int skip, int limit, int rarity
});




}
/// @nodoc
class _$OperatorListRequestCopyWithImpl<$Res>
    implements $OperatorListRequestCopyWith<$Res> {
  _$OperatorListRequestCopyWithImpl(this._self, this._then);

  final OperatorListRequest _self;
  final $Res Function(OperatorListRequest) _then;

/// Create a copy of OperatorListRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? skip = null,Object? limit = null,Object? rarity = null,}) {
  return _then(_self.copyWith(
skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OperatorListRequest].
extension OperatorListRequestPatterns on OperatorListRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperatorListRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperatorListRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperatorListRequest value)  $default,){
final _that = this;
switch (_that) {
case _OperatorListRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperatorListRequest value)?  $default,){
final _that = this;
switch (_that) {
case _OperatorListRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int skip,  int limit,  int rarity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperatorListRequest() when $default != null:
return $default(_that.skip,_that.limit,_that.rarity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int skip,  int limit,  int rarity)  $default,) {final _that = this;
switch (_that) {
case _OperatorListRequest():
return $default(_that.skip,_that.limit,_that.rarity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int skip,  int limit,  int rarity)?  $default,) {final _that = this;
switch (_that) {
case _OperatorListRequest() when $default != null:
return $default(_that.skip,_that.limit,_that.rarity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OperatorListRequest implements OperatorListRequest {
  const _OperatorListRequest({required this.skip, required this.limit, required this.rarity});
  factory _OperatorListRequest.fromJson(Map<String, dynamic> json) => _$OperatorListRequestFromJson(json);

@override final  int skip;
@override final  int limit;
@override final  int rarity;

/// Create a copy of OperatorListRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperatorListRequestCopyWith<_OperatorListRequest> get copyWith => __$OperatorListRequestCopyWithImpl<_OperatorListRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperatorListRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OperatorListRequest&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.rarity, rarity) || other.rarity == rarity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skip,limit,rarity);

@override
String toString() {
  return 'OperatorListRequest(skip: $skip, limit: $limit, rarity: $rarity)';
}


}

/// @nodoc
abstract mixin class _$OperatorListRequestCopyWith<$Res> implements $OperatorListRequestCopyWith<$Res> {
  factory _$OperatorListRequestCopyWith(_OperatorListRequest value, $Res Function(_OperatorListRequest) _then) = __$OperatorListRequestCopyWithImpl;
@override @useResult
$Res call({
 int skip, int limit, int rarity
});




}
/// @nodoc
class __$OperatorListRequestCopyWithImpl<$Res>
    implements _$OperatorListRequestCopyWith<$Res> {
  __$OperatorListRequestCopyWithImpl(this._self, this._then);

  final _OperatorListRequest _self;
  final $Res Function(_OperatorListRequest) _then;

/// Create a copy of OperatorListRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? skip = null,Object? limit = null,Object? rarity = null,}) {
  return _then(_OperatorListRequest(
skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

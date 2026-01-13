// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'range_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RangeResponse {

 String get rangeId; List<GridResponse> get grids;
/// Create a copy of RangeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RangeResponseCopyWith<RangeResponse> get copyWith => _$RangeResponseCopyWithImpl<RangeResponse>(this as RangeResponse, _$identity);

  /// Serializes this RangeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RangeResponse&&(identical(other.rangeId, rangeId) || other.rangeId == rangeId)&&const DeepCollectionEquality().equals(other.grids, grids));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rangeId,const DeepCollectionEquality().hash(grids));

@override
String toString() {
  return 'RangeResponse(rangeId: $rangeId, grids: $grids)';
}


}

/// @nodoc
abstract mixin class $RangeResponseCopyWith<$Res>  {
  factory $RangeResponseCopyWith(RangeResponse value, $Res Function(RangeResponse) _then) = _$RangeResponseCopyWithImpl;
@useResult
$Res call({
 String rangeId, List<GridResponse> grids
});




}
/// @nodoc
class _$RangeResponseCopyWithImpl<$Res>
    implements $RangeResponseCopyWith<$Res> {
  _$RangeResponseCopyWithImpl(this._self, this._then);

  final RangeResponse _self;
  final $Res Function(RangeResponse) _then;

/// Create a copy of RangeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rangeId = null,Object? grids = null,}) {
  return _then(_self.copyWith(
rangeId: null == rangeId ? _self.rangeId : rangeId // ignore: cast_nullable_to_non_nullable
as String,grids: null == grids ? _self.grids : grids // ignore: cast_nullable_to_non_nullable
as List<GridResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [RangeResponse].
extension RangeResponsePatterns on RangeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RangeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RangeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RangeResponse value)  $default,){
final _that = this;
switch (_that) {
case _RangeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RangeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RangeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String rangeId,  List<GridResponse> grids)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RangeResponse() when $default != null:
return $default(_that.rangeId,_that.grids);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String rangeId,  List<GridResponse> grids)  $default,) {final _that = this;
switch (_that) {
case _RangeResponse():
return $default(_that.rangeId,_that.grids);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String rangeId,  List<GridResponse> grids)?  $default,) {final _that = this;
switch (_that) {
case _RangeResponse() when $default != null:
return $default(_that.rangeId,_that.grids);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RangeResponse implements RangeResponse {
  const _RangeResponse({required this.rangeId, required final  List<GridResponse> grids}): _grids = grids;
  factory _RangeResponse.fromJson(Map<String, dynamic> json) => _$RangeResponseFromJson(json);

@override final  String rangeId;
 final  List<GridResponse> _grids;
@override List<GridResponse> get grids {
  if (_grids is EqualUnmodifiableListView) return _grids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grids);
}


/// Create a copy of RangeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RangeResponseCopyWith<_RangeResponse> get copyWith => __$RangeResponseCopyWithImpl<_RangeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RangeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RangeResponse&&(identical(other.rangeId, rangeId) || other.rangeId == rangeId)&&const DeepCollectionEquality().equals(other._grids, _grids));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rangeId,const DeepCollectionEquality().hash(_grids));

@override
String toString() {
  return 'RangeResponse(rangeId: $rangeId, grids: $grids)';
}


}

/// @nodoc
abstract mixin class _$RangeResponseCopyWith<$Res> implements $RangeResponseCopyWith<$Res> {
  factory _$RangeResponseCopyWith(_RangeResponse value, $Res Function(_RangeResponse) _then) = __$RangeResponseCopyWithImpl;
@override @useResult
$Res call({
 String rangeId, List<GridResponse> grids
});




}
/// @nodoc
class __$RangeResponseCopyWithImpl<$Res>
    implements _$RangeResponseCopyWith<$Res> {
  __$RangeResponseCopyWithImpl(this._self, this._then);

  final _RangeResponse _self;
  final $Res Function(_RangeResponse) _then;

/// Create a copy of RangeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rangeId = null,Object? grids = null,}) {
  return _then(_RangeResponse(
rangeId: null == rangeId ? _self.rangeId : rangeId // ignore: cast_nullable_to_non_nullable
as String,grids: null == grids ? _self._grids : grids // ignore: cast_nullable_to_non_nullable
as List<GridResponse>,
  ));
}


}


/// @nodoc
mixin _$GridResponse {

 int get row; int get col;
/// Create a copy of GridResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GridResponseCopyWith<GridResponse> get copyWith => _$GridResponseCopyWithImpl<GridResponse>(this as GridResponse, _$identity);

  /// Serializes this GridResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GridResponse&&(identical(other.row, row) || other.row == row)&&(identical(other.col, col) || other.col == col));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,row,col);

@override
String toString() {
  return 'GridResponse(row: $row, col: $col)';
}


}

/// @nodoc
abstract mixin class $GridResponseCopyWith<$Res>  {
  factory $GridResponseCopyWith(GridResponse value, $Res Function(GridResponse) _then) = _$GridResponseCopyWithImpl;
@useResult
$Res call({
 int row, int col
});




}
/// @nodoc
class _$GridResponseCopyWithImpl<$Res>
    implements $GridResponseCopyWith<$Res> {
  _$GridResponseCopyWithImpl(this._self, this._then);

  final GridResponse _self;
  final $Res Function(GridResponse) _then;

/// Create a copy of GridResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? row = null,Object? col = null,}) {
  return _then(_self.copyWith(
row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as int,col: null == col ? _self.col : col // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GridResponse].
extension GridResponsePatterns on GridResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GridResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GridResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GridResponse value)  $default,){
final _that = this;
switch (_that) {
case _GridResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GridResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GridResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int row,  int col)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GridResponse() when $default != null:
return $default(_that.row,_that.col);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int row,  int col)  $default,) {final _that = this;
switch (_that) {
case _GridResponse():
return $default(_that.row,_that.col);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int row,  int col)?  $default,) {final _that = this;
switch (_that) {
case _GridResponse() when $default != null:
return $default(_that.row,_that.col);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GridResponse implements GridResponse {
  const _GridResponse({required this.row, required this.col});
  factory _GridResponse.fromJson(Map<String, dynamic> json) => _$GridResponseFromJson(json);

@override final  int row;
@override final  int col;

/// Create a copy of GridResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GridResponseCopyWith<_GridResponse> get copyWith => __$GridResponseCopyWithImpl<_GridResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GridResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GridResponse&&(identical(other.row, row) || other.row == row)&&(identical(other.col, col) || other.col == col));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,row,col);

@override
String toString() {
  return 'GridResponse(row: $row, col: $col)';
}


}

/// @nodoc
abstract mixin class _$GridResponseCopyWith<$Res> implements $GridResponseCopyWith<$Res> {
  factory _$GridResponseCopyWith(_GridResponse value, $Res Function(_GridResponse) _then) = __$GridResponseCopyWithImpl;
@override @useResult
$Res call({
 int row, int col
});




}
/// @nodoc
class __$GridResponseCopyWithImpl<$Res>
    implements _$GridResponseCopyWith<$Res> {
  __$GridResponseCopyWithImpl(this._self, this._then);

  final _GridResponse _self;
  final $Res Function(_GridResponse) _then;

/// Create a copy of GridResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? row = null,Object? col = null,}) {
  return _then(_GridResponse(
row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as int,col: null == col ? _self.col : col // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

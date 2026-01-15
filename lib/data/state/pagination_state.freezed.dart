// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginationState {

 List<OperatorModel> get operators;// 누적된 데이터
 int get nextSkip;// 다음에 불러올 offset
 bool get hasMore;// 더 불러올 데이터가 남았는지
 bool get isLoadingMore;
/// Create a copy of PaginationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationStateCopyWith<PaginationState> get copyWith => _$PaginationStateCopyWithImpl<PaginationState>(this as PaginationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationState&&const DeepCollectionEquality().equals(other.operators, operators)&&(identical(other.nextSkip, nextSkip) || other.nextSkip == nextSkip)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(operators),nextSkip,hasMore,isLoadingMore);

@override
String toString() {
  return 'PaginationState(operators: $operators, nextSkip: $nextSkip, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $PaginationStateCopyWith<$Res>  {
  factory $PaginationStateCopyWith(PaginationState value, $Res Function(PaginationState) _then) = _$PaginationStateCopyWithImpl;
@useResult
$Res call({
 List<OperatorModel> operators, int nextSkip, bool hasMore, bool isLoadingMore
});




}
/// @nodoc
class _$PaginationStateCopyWithImpl<$Res>
    implements $PaginationStateCopyWith<$Res> {
  _$PaginationStateCopyWithImpl(this._self, this._then);

  final PaginationState _self;
  final $Res Function(PaginationState) _then;

/// Create a copy of PaginationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? operators = null,Object? nextSkip = null,Object? hasMore = null,Object? isLoadingMore = null,}) {
  return _then(_self.copyWith(
operators: null == operators ? _self.operators : operators // ignore: cast_nullable_to_non_nullable
as List<OperatorModel>,nextSkip: null == nextSkip ? _self.nextSkip : nextSkip // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationState].
extension PaginationStatePatterns on PaginationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationState value)  $default,){
final _that = this;
switch (_that) {
case _PaginationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationState value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OperatorModel> operators,  int nextSkip,  bool hasMore,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationState() when $default != null:
return $default(_that.operators,_that.nextSkip,_that.hasMore,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OperatorModel> operators,  int nextSkip,  bool hasMore,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _PaginationState():
return $default(_that.operators,_that.nextSkip,_that.hasMore,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OperatorModel> operators,  int nextSkip,  bool hasMore,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _PaginationState() when $default != null:
return $default(_that.operators,_that.nextSkip,_that.hasMore,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _PaginationState implements PaginationState {
  const _PaginationState({final  List<OperatorModel> operators = const [], this.nextSkip = 0, this.hasMore = true, this.isLoadingMore = false}): _operators = operators;
  

 final  List<OperatorModel> _operators;
@override@JsonKey() List<OperatorModel> get operators {
  if (_operators is EqualUnmodifiableListView) return _operators;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_operators);
}

// 누적된 데이터
@override@JsonKey() final  int nextSkip;
// 다음에 불러올 offset
@override@JsonKey() final  bool hasMore;
// 더 불러올 데이터가 남았는지
@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of PaginationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationStateCopyWith<_PaginationState> get copyWith => __$PaginationStateCopyWithImpl<_PaginationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationState&&const DeepCollectionEquality().equals(other._operators, _operators)&&(identical(other.nextSkip, nextSkip) || other.nextSkip == nextSkip)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_operators),nextSkip,hasMore,isLoadingMore);

@override
String toString() {
  return 'PaginationState(operators: $operators, nextSkip: $nextSkip, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$PaginationStateCopyWith<$Res> implements $PaginationStateCopyWith<$Res> {
  factory _$PaginationStateCopyWith(_PaginationState value, $Res Function(_PaginationState) _then) = __$PaginationStateCopyWithImpl;
@override @useResult
$Res call({
 List<OperatorModel> operators, int nextSkip, bool hasMore, bool isLoadingMore
});




}
/// @nodoc
class __$PaginationStateCopyWithImpl<$Res>
    implements _$PaginationStateCopyWith<$Res> {
  __$PaginationStateCopyWithImpl(this._self, this._then);

  final _PaginationState _self;
  final $Res Function(_PaginationState) _then;

/// Create a copy of PaginationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? operators = null,Object? nextSkip = null,Object? hasMore = null,Object? isLoadingMore = null,}) {
  return _then(_PaginationState(
operators: null == operators ? _self._operators : operators // ignore: cast_nullable_to_non_nullable
as List<OperatorModel>,nextSkip: null == nextSkip ? _self.nextSkip : nextSkip // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

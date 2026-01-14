// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillResponse {

 int get skillId; String get skillCode; String get nameKo; String get iconId; List<LevelResponse> get levels; List<SkillMasteryCostResponse>? get masteryCosts;
/// Create a copy of SkillResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillResponseCopyWith<SkillResponse> get copyWith => _$SkillResponseCopyWithImpl<SkillResponse>(this as SkillResponse, _$identity);

  /// Serializes this SkillResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkillResponse&&(identical(other.skillId, skillId) || other.skillId == skillId)&&(identical(other.skillCode, skillCode) || other.skillCode == skillCode)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.iconId, iconId) || other.iconId == iconId)&&const DeepCollectionEquality().equals(other.levels, levels)&&const DeepCollectionEquality().equals(other.masteryCosts, masteryCosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skillId,skillCode,nameKo,iconId,const DeepCollectionEquality().hash(levels),const DeepCollectionEquality().hash(masteryCosts));

@override
String toString() {
  return 'SkillResponse(skillId: $skillId, skillCode: $skillCode, nameKo: $nameKo, iconId: $iconId, levels: $levels, masteryCosts: $masteryCosts)';
}


}

/// @nodoc
abstract mixin class $SkillResponseCopyWith<$Res>  {
  factory $SkillResponseCopyWith(SkillResponse value, $Res Function(SkillResponse) _then) = _$SkillResponseCopyWithImpl;
@useResult
$Res call({
 int skillId, String skillCode, String nameKo, String iconId, List<LevelResponse> levels, List<SkillMasteryCostResponse>? masteryCosts
});




}
/// @nodoc
class _$SkillResponseCopyWithImpl<$Res>
    implements $SkillResponseCopyWith<$Res> {
  _$SkillResponseCopyWithImpl(this._self, this._then);

  final SkillResponse _self;
  final $Res Function(SkillResponse) _then;

/// Create a copy of SkillResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? skillId = null,Object? skillCode = null,Object? nameKo = null,Object? iconId = null,Object? levels = null,Object? masteryCosts = freezed,}) {
  return _then(_self.copyWith(
skillId: null == skillId ? _self.skillId : skillId // ignore: cast_nullable_to_non_nullable
as int,skillCode: null == skillCode ? _self.skillCode : skillCode // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,levels: null == levels ? _self.levels : levels // ignore: cast_nullable_to_non_nullable
as List<LevelResponse>,masteryCosts: freezed == masteryCosts ? _self.masteryCosts : masteryCosts // ignore: cast_nullable_to_non_nullable
as List<SkillMasteryCostResponse>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SkillResponse].
extension SkillResponsePatterns on SkillResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkillResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkillResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkillResponse value)  $default,){
final _that = this;
switch (_that) {
case _SkillResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkillResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SkillResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int skillId,  String skillCode,  String nameKo,  String iconId,  List<LevelResponse> levels,  List<SkillMasteryCostResponse>? masteryCosts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkillResponse() when $default != null:
return $default(_that.skillId,_that.skillCode,_that.nameKo,_that.iconId,_that.levels,_that.masteryCosts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int skillId,  String skillCode,  String nameKo,  String iconId,  List<LevelResponse> levels,  List<SkillMasteryCostResponse>? masteryCosts)  $default,) {final _that = this;
switch (_that) {
case _SkillResponse():
return $default(_that.skillId,_that.skillCode,_that.nameKo,_that.iconId,_that.levels,_that.masteryCosts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int skillId,  String skillCode,  String nameKo,  String iconId,  List<LevelResponse> levels,  List<SkillMasteryCostResponse>? masteryCosts)?  $default,) {final _that = this;
switch (_that) {
case _SkillResponse() when $default != null:
return $default(_that.skillId,_that.skillCode,_that.nameKo,_that.iconId,_that.levels,_that.masteryCosts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkillResponse implements SkillResponse {
  const _SkillResponse({required this.skillId, required this.skillCode, required this.nameKo, required this.iconId, required final  List<LevelResponse> levels, required final  List<SkillMasteryCostResponse>? masteryCosts}): _levels = levels,_masteryCosts = masteryCosts;
  factory _SkillResponse.fromJson(Map<String, dynamic> json) => _$SkillResponseFromJson(json);

@override final  int skillId;
@override final  String skillCode;
@override final  String nameKo;
@override final  String iconId;
 final  List<LevelResponse> _levels;
@override List<LevelResponse> get levels {
  if (_levels is EqualUnmodifiableListView) return _levels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_levels);
}

 final  List<SkillMasteryCostResponse>? _masteryCosts;
@override List<SkillMasteryCostResponse>? get masteryCosts {
  final value = _masteryCosts;
  if (value == null) return null;
  if (_masteryCosts is EqualUnmodifiableListView) return _masteryCosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SkillResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillResponseCopyWith<_SkillResponse> get copyWith => __$SkillResponseCopyWithImpl<_SkillResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkillResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillResponse&&(identical(other.skillId, skillId) || other.skillId == skillId)&&(identical(other.skillCode, skillCode) || other.skillCode == skillCode)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.iconId, iconId) || other.iconId == iconId)&&const DeepCollectionEquality().equals(other._levels, _levels)&&const DeepCollectionEquality().equals(other._masteryCosts, _masteryCosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skillId,skillCode,nameKo,iconId,const DeepCollectionEquality().hash(_levels),const DeepCollectionEquality().hash(_masteryCosts));

@override
String toString() {
  return 'SkillResponse(skillId: $skillId, skillCode: $skillCode, nameKo: $nameKo, iconId: $iconId, levels: $levels, masteryCosts: $masteryCosts)';
}


}

/// @nodoc
abstract mixin class _$SkillResponseCopyWith<$Res> implements $SkillResponseCopyWith<$Res> {
  factory _$SkillResponseCopyWith(_SkillResponse value, $Res Function(_SkillResponse) _then) = __$SkillResponseCopyWithImpl;
@override @useResult
$Res call({
 int skillId, String skillCode, String nameKo, String iconId, List<LevelResponse> levels, List<SkillMasteryCostResponse>? masteryCosts
});




}
/// @nodoc
class __$SkillResponseCopyWithImpl<$Res>
    implements _$SkillResponseCopyWith<$Res> {
  __$SkillResponseCopyWithImpl(this._self, this._then);

  final _SkillResponse _self;
  final $Res Function(_SkillResponse) _then;

/// Create a copy of SkillResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? skillId = null,Object? skillCode = null,Object? nameKo = null,Object? iconId = null,Object? levels = null,Object? masteryCosts = freezed,}) {
  return _then(_SkillResponse(
skillId: null == skillId ? _self.skillId : skillId // ignore: cast_nullable_to_non_nullable
as int,skillCode: null == skillCode ? _self.skillCode : skillCode // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,levels: null == levels ? _self._levels : levels // ignore: cast_nullable_to_non_nullable
as List<LevelResponse>,masteryCosts: freezed == masteryCosts ? _self._masteryCosts : masteryCosts // ignore: cast_nullable_to_non_nullable
as List<SkillMasteryCostResponse>?,
  ));
}


}


/// @nodoc
mixin _$LevelResponse {

 int get level; int get spCost; int get initialSp; int get duration; String get description; List<BlackboardResponse> get blackboard; String? get rangeData;
/// Create a copy of LevelResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelResponseCopyWith<LevelResponse> get copyWith => _$LevelResponseCopyWithImpl<LevelResponse>(this as LevelResponse, _$identity);

  /// Serializes this LevelResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelResponse&&(identical(other.level, level) || other.level == level)&&(identical(other.spCost, spCost) || other.spCost == spCost)&&(identical(other.initialSp, initialSp) || other.initialSp == initialSp)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.blackboard, blackboard)&&(identical(other.rangeData, rangeData) || other.rangeData == rangeData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,spCost,initialSp,duration,description,const DeepCollectionEquality().hash(blackboard),rangeData);

@override
String toString() {
  return 'LevelResponse(level: $level, spCost: $spCost, initialSp: $initialSp, duration: $duration, description: $description, blackboard: $blackboard, rangeData: $rangeData)';
}


}

/// @nodoc
abstract mixin class $LevelResponseCopyWith<$Res>  {
  factory $LevelResponseCopyWith(LevelResponse value, $Res Function(LevelResponse) _then) = _$LevelResponseCopyWithImpl;
@useResult
$Res call({
 int level, int spCost, int initialSp, int duration, String description, List<BlackboardResponse> blackboard, String? rangeData
});




}
/// @nodoc
class _$LevelResponseCopyWithImpl<$Res>
    implements $LevelResponseCopyWith<$Res> {
  _$LevelResponseCopyWithImpl(this._self, this._then);

  final LevelResponse _self;
  final $Res Function(LevelResponse) _then;

/// Create a copy of LevelResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? spCost = null,Object? initialSp = null,Object? duration = null,Object? description = null,Object? blackboard = null,Object? rangeData = freezed,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,spCost: null == spCost ? _self.spCost : spCost // ignore: cast_nullable_to_non_nullable
as int,initialSp: null == initialSp ? _self.initialSp : initialSp // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,blackboard: null == blackboard ? _self.blackboard : blackboard // ignore: cast_nullable_to_non_nullable
as List<BlackboardResponse>,rangeData: freezed == rangeData ? _self.rangeData : rangeData // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LevelResponse].
extension LevelResponsePatterns on LevelResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelResponse value)  $default,){
final _that = this;
switch (_that) {
case _LevelResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LevelResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int level,  int spCost,  int initialSp,  int duration,  String description,  List<BlackboardResponse> blackboard,  String? rangeData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelResponse() when $default != null:
return $default(_that.level,_that.spCost,_that.initialSp,_that.duration,_that.description,_that.blackboard,_that.rangeData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int level,  int spCost,  int initialSp,  int duration,  String description,  List<BlackboardResponse> blackboard,  String? rangeData)  $default,) {final _that = this;
switch (_that) {
case _LevelResponse():
return $default(_that.level,_that.spCost,_that.initialSp,_that.duration,_that.description,_that.blackboard,_that.rangeData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int level,  int spCost,  int initialSp,  int duration,  String description,  List<BlackboardResponse> blackboard,  String? rangeData)?  $default,) {final _that = this;
switch (_that) {
case _LevelResponse() when $default != null:
return $default(_that.level,_that.spCost,_that.initialSp,_that.duration,_that.description,_that.blackboard,_that.rangeData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LevelResponse implements LevelResponse {
  const _LevelResponse({required this.level, required this.spCost, required this.initialSp, required this.duration, required this.description, required final  List<BlackboardResponse> blackboard, required this.rangeData}): _blackboard = blackboard;
  factory _LevelResponse.fromJson(Map<String, dynamic> json) => _$LevelResponseFromJson(json);

@override final  int level;
@override final  int spCost;
@override final  int initialSp;
@override final  int duration;
@override final  String description;
 final  List<BlackboardResponse> _blackboard;
@override List<BlackboardResponse> get blackboard {
  if (_blackboard is EqualUnmodifiableListView) return _blackboard;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blackboard);
}

@override final  String? rangeData;

/// Create a copy of LevelResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelResponseCopyWith<_LevelResponse> get copyWith => __$LevelResponseCopyWithImpl<_LevelResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelResponse&&(identical(other.level, level) || other.level == level)&&(identical(other.spCost, spCost) || other.spCost == spCost)&&(identical(other.initialSp, initialSp) || other.initialSp == initialSp)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._blackboard, _blackboard)&&(identical(other.rangeData, rangeData) || other.rangeData == rangeData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,spCost,initialSp,duration,description,const DeepCollectionEquality().hash(_blackboard),rangeData);

@override
String toString() {
  return 'LevelResponse(level: $level, spCost: $spCost, initialSp: $initialSp, duration: $duration, description: $description, blackboard: $blackboard, rangeData: $rangeData)';
}


}

/// @nodoc
abstract mixin class _$LevelResponseCopyWith<$Res> implements $LevelResponseCopyWith<$Res> {
  factory _$LevelResponseCopyWith(_LevelResponse value, $Res Function(_LevelResponse) _then) = __$LevelResponseCopyWithImpl;
@override @useResult
$Res call({
 int level, int spCost, int initialSp, int duration, String description, List<BlackboardResponse> blackboard, String? rangeData
});




}
/// @nodoc
class __$LevelResponseCopyWithImpl<$Res>
    implements _$LevelResponseCopyWith<$Res> {
  __$LevelResponseCopyWithImpl(this._self, this._then);

  final _LevelResponse _self;
  final $Res Function(_LevelResponse) _then;

/// Create a copy of LevelResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? spCost = null,Object? initialSp = null,Object? duration = null,Object? description = null,Object? blackboard = null,Object? rangeData = freezed,}) {
  return _then(_LevelResponse(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,spCost: null == spCost ? _self.spCost : spCost // ignore: cast_nullable_to_non_nullable
as int,initialSp: null == initialSp ? _self.initialSp : initialSp // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,blackboard: null == blackboard ? _self._blackboard : blackboard // ignore: cast_nullable_to_non_nullable
as List<BlackboardResponse>,rangeData: freezed == rangeData ? _self.rangeData : rangeData // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BlackboardResponse {

 String get key; double get value; String? get valueStr;
/// Create a copy of BlackboardResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlackboardResponseCopyWith<BlackboardResponse> get copyWith => _$BlackboardResponseCopyWithImpl<BlackboardResponse>(this as BlackboardResponse, _$identity);

  /// Serializes this BlackboardResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlackboardResponse&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.valueStr, valueStr) || other.valueStr == valueStr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,value,valueStr);

@override
String toString() {
  return 'BlackboardResponse(key: $key, value: $value, valueStr: $valueStr)';
}


}

/// @nodoc
abstract mixin class $BlackboardResponseCopyWith<$Res>  {
  factory $BlackboardResponseCopyWith(BlackboardResponse value, $Res Function(BlackboardResponse) _then) = _$BlackboardResponseCopyWithImpl;
@useResult
$Res call({
 String key, double value, String? valueStr
});




}
/// @nodoc
class _$BlackboardResponseCopyWithImpl<$Res>
    implements $BlackboardResponseCopyWith<$Res> {
  _$BlackboardResponseCopyWithImpl(this._self, this._then);

  final BlackboardResponse _self;
  final $Res Function(BlackboardResponse) _then;

/// Create a copy of BlackboardResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? value = null,Object? valueStr = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,valueStr: freezed == valueStr ? _self.valueStr : valueStr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BlackboardResponse].
extension BlackboardResponsePatterns on BlackboardResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlackboardResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlackboardResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlackboardResponse value)  $default,){
final _that = this;
switch (_that) {
case _BlackboardResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlackboardResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BlackboardResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  double value,  String? valueStr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlackboardResponse() when $default != null:
return $default(_that.key,_that.value,_that.valueStr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  double value,  String? valueStr)  $default,) {final _that = this;
switch (_that) {
case _BlackboardResponse():
return $default(_that.key,_that.value,_that.valueStr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  double value,  String? valueStr)?  $default,) {final _that = this;
switch (_that) {
case _BlackboardResponse() when $default != null:
return $default(_that.key,_that.value,_that.valueStr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlackboardResponse implements BlackboardResponse {
  const _BlackboardResponse({required this.key, required this.value, required this.valueStr});
  factory _BlackboardResponse.fromJson(Map<String, dynamic> json) => _$BlackboardResponseFromJson(json);

@override final  String key;
@override final  double value;
@override final  String? valueStr;

/// Create a copy of BlackboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlackboardResponseCopyWith<_BlackboardResponse> get copyWith => __$BlackboardResponseCopyWithImpl<_BlackboardResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlackboardResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlackboardResponse&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.valueStr, valueStr) || other.valueStr == valueStr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,value,valueStr);

@override
String toString() {
  return 'BlackboardResponse(key: $key, value: $value, valueStr: $valueStr)';
}


}

/// @nodoc
abstract mixin class _$BlackboardResponseCopyWith<$Res> implements $BlackboardResponseCopyWith<$Res> {
  factory _$BlackboardResponseCopyWith(_BlackboardResponse value, $Res Function(_BlackboardResponse) _then) = __$BlackboardResponseCopyWithImpl;
@override @useResult
$Res call({
 String key, double value, String? valueStr
});




}
/// @nodoc
class __$BlackboardResponseCopyWithImpl<$Res>
    implements _$BlackboardResponseCopyWith<$Res> {
  __$BlackboardResponseCopyWithImpl(this._self, this._then);

  final _BlackboardResponse _self;
  final $Res Function(_BlackboardResponse) _then;

/// Create a copy of BlackboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? value = null,Object? valueStr = freezed,}) {
  return _then(_BlackboardResponse(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,valueStr: freezed == valueStr ? _self.valueStr : valueStr // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SkillMasteryCostResponse {

 int get masteryLevel; int get count; ItemResponse get item;
/// Create a copy of SkillMasteryCostResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillMasteryCostResponseCopyWith<SkillMasteryCostResponse> get copyWith => _$SkillMasteryCostResponseCopyWithImpl<SkillMasteryCostResponse>(this as SkillMasteryCostResponse, _$identity);

  /// Serializes this SkillMasteryCostResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkillMasteryCostResponse&&(identical(other.masteryLevel, masteryLevel) || other.masteryLevel == masteryLevel)&&(identical(other.count, count) || other.count == count)&&(identical(other.item, item) || other.item == item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,masteryLevel,count,item);

@override
String toString() {
  return 'SkillMasteryCostResponse(masteryLevel: $masteryLevel, count: $count, item: $item)';
}


}

/// @nodoc
abstract mixin class $SkillMasteryCostResponseCopyWith<$Res>  {
  factory $SkillMasteryCostResponseCopyWith(SkillMasteryCostResponse value, $Res Function(SkillMasteryCostResponse) _then) = _$SkillMasteryCostResponseCopyWithImpl;
@useResult
$Res call({
 int masteryLevel, int count, ItemResponse item
});


$ItemResponseCopyWith<$Res> get item;

}
/// @nodoc
class _$SkillMasteryCostResponseCopyWithImpl<$Res>
    implements $SkillMasteryCostResponseCopyWith<$Res> {
  _$SkillMasteryCostResponseCopyWithImpl(this._self, this._then);

  final SkillMasteryCostResponse _self;
  final $Res Function(SkillMasteryCostResponse) _then;

/// Create a copy of SkillMasteryCostResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? masteryLevel = null,Object? count = null,Object? item = null,}) {
  return _then(_self.copyWith(
masteryLevel: null == masteryLevel ? _self.masteryLevel : masteryLevel // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemResponse,
  ));
}
/// Create a copy of SkillMasteryCostResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResponseCopyWith<$Res> get item {
  
  return $ItemResponseCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// Adds pattern-matching-related methods to [SkillMasteryCostResponse].
extension SkillMasteryCostResponsePatterns on SkillMasteryCostResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkillMasteryCostResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkillMasteryCostResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkillMasteryCostResponse value)  $default,){
final _that = this;
switch (_that) {
case _SkillMasteryCostResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkillMasteryCostResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SkillMasteryCostResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int masteryLevel,  int count,  ItemResponse item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkillMasteryCostResponse() when $default != null:
return $default(_that.masteryLevel,_that.count,_that.item);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int masteryLevel,  int count,  ItemResponse item)  $default,) {final _that = this;
switch (_that) {
case _SkillMasteryCostResponse():
return $default(_that.masteryLevel,_that.count,_that.item);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int masteryLevel,  int count,  ItemResponse item)?  $default,) {final _that = this;
switch (_that) {
case _SkillMasteryCostResponse() when $default != null:
return $default(_that.masteryLevel,_that.count,_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkillMasteryCostResponse implements SkillMasteryCostResponse {
  const _SkillMasteryCostResponse({required this.masteryLevel, required this.count, required this.item});
  factory _SkillMasteryCostResponse.fromJson(Map<String, dynamic> json) => _$SkillMasteryCostResponseFromJson(json);

@override final  int masteryLevel;
@override final  int count;
@override final  ItemResponse item;

/// Create a copy of SkillMasteryCostResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillMasteryCostResponseCopyWith<_SkillMasteryCostResponse> get copyWith => __$SkillMasteryCostResponseCopyWithImpl<_SkillMasteryCostResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkillMasteryCostResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillMasteryCostResponse&&(identical(other.masteryLevel, masteryLevel) || other.masteryLevel == masteryLevel)&&(identical(other.count, count) || other.count == count)&&(identical(other.item, item) || other.item == item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,masteryLevel,count,item);

@override
String toString() {
  return 'SkillMasteryCostResponse(masteryLevel: $masteryLevel, count: $count, item: $item)';
}


}

/// @nodoc
abstract mixin class _$SkillMasteryCostResponseCopyWith<$Res> implements $SkillMasteryCostResponseCopyWith<$Res> {
  factory _$SkillMasteryCostResponseCopyWith(_SkillMasteryCostResponse value, $Res Function(_SkillMasteryCostResponse) _then) = __$SkillMasteryCostResponseCopyWithImpl;
@override @useResult
$Res call({
 int masteryLevel, int count, ItemResponse item
});


@override $ItemResponseCopyWith<$Res> get item;

}
/// @nodoc
class __$SkillMasteryCostResponseCopyWithImpl<$Res>
    implements _$SkillMasteryCostResponseCopyWith<$Res> {
  __$SkillMasteryCostResponseCopyWithImpl(this._self, this._then);

  final _SkillMasteryCostResponse _self;
  final $Res Function(_SkillMasteryCostResponse) _then;

/// Create a copy of SkillMasteryCostResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? masteryLevel = null,Object? count = null,Object? item = null,}) {
  return _then(_SkillMasteryCostResponse(
masteryLevel: null == masteryLevel ? _self.masteryLevel : masteryLevel // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemResponse,
  ));
}

/// Create a copy of SkillMasteryCostResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResponseCopyWith<$Res> get item {
  
  return $ItemResponseCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

// dart format on

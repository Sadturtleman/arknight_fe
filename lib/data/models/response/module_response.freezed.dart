// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModuleResponse {

 List<ModuleDetailResponse> get modules;
/// Create a copy of ModuleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleResponseCopyWith<ModuleResponse> get copyWith => _$ModuleResponseCopyWithImpl<ModuleResponse>(this as ModuleResponse, _$identity);

  /// Serializes this ModuleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleResponse&&const DeepCollectionEquality().equals(other.modules, modules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(modules));

@override
String toString() {
  return 'ModuleResponse(modules: $modules)';
}


}

/// @nodoc
abstract mixin class $ModuleResponseCopyWith<$Res>  {
  factory $ModuleResponseCopyWith(ModuleResponse value, $Res Function(ModuleResponse) _then) = _$ModuleResponseCopyWithImpl;
@useResult
$Res call({
 List<ModuleDetailResponse> modules
});




}
/// @nodoc
class _$ModuleResponseCopyWithImpl<$Res>
    implements $ModuleResponseCopyWith<$Res> {
  _$ModuleResponseCopyWithImpl(this._self, this._then);

  final ModuleResponse _self;
  final $Res Function(ModuleResponse) _then;

/// Create a copy of ModuleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? modules = null,}) {
  return _then(_self.copyWith(
modules: null == modules ? _self.modules : modules // ignore: cast_nullable_to_non_nullable
as List<ModuleDetailResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ModuleResponse].
extension ModuleResponsePatterns on ModuleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModuleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModuleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModuleResponse value)  $default,){
final _that = this;
switch (_that) {
case _ModuleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModuleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ModuleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ModuleDetailResponse> modules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModuleResponse() when $default != null:
return $default(_that.modules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ModuleDetailResponse> modules)  $default,) {final _that = this;
switch (_that) {
case _ModuleResponse():
return $default(_that.modules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ModuleDetailResponse> modules)?  $default,) {final _that = this;
switch (_that) {
case _ModuleResponse() when $default != null:
return $default(_that.modules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModuleResponse implements ModuleResponse {
  const _ModuleResponse({required final  List<ModuleDetailResponse> modules}): _modules = modules;
  factory _ModuleResponse.fromJson(Map<String, dynamic> json) => _$ModuleResponseFromJson(json);

 final  List<ModuleDetailResponse> _modules;
@override List<ModuleDetailResponse> get modules {
  if (_modules is EqualUnmodifiableListView) return _modules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modules);
}


/// Create a copy of ModuleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleResponseCopyWith<_ModuleResponse> get copyWith => __$ModuleResponseCopyWithImpl<_ModuleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModuleResponse&&const DeepCollectionEquality().equals(other._modules, _modules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_modules));

@override
String toString() {
  return 'ModuleResponse(modules: $modules)';
}


}

/// @nodoc
abstract mixin class _$ModuleResponseCopyWith<$Res> implements $ModuleResponseCopyWith<$Res> {
  factory _$ModuleResponseCopyWith(_ModuleResponse value, $Res Function(_ModuleResponse) _then) = __$ModuleResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ModuleDetailResponse> modules
});




}
/// @nodoc
class __$ModuleResponseCopyWithImpl<$Res>
    implements _$ModuleResponseCopyWith<$Res> {
  __$ModuleResponseCopyWithImpl(this._self, this._then);

  final _ModuleResponse _self;
  final $Res Function(_ModuleResponse) _then;

/// Create a copy of ModuleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? modules = null,}) {
  return _then(_ModuleResponse(
modules: null == modules ? _self._modules : modules // ignore: cast_nullable_to_non_nullable
as List<ModuleDetailResponse>,
  ));
}


}


/// @nodoc
mixin _$ModuleDetailResponse {

 int get moduleId; String get moduleCode; String get nameKo; String get iconId; String get description; List<CostResponse> get costs;
/// Create a copy of ModuleDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleDetailResponseCopyWith<ModuleDetailResponse> get copyWith => _$ModuleDetailResponseCopyWithImpl<ModuleDetailResponse>(this as ModuleDetailResponse, _$identity);

  /// Serializes this ModuleDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleDetailResponse&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.moduleCode, moduleCode) || other.moduleCode == moduleCode)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.iconId, iconId) || other.iconId == iconId)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.costs, costs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleId,moduleCode,nameKo,iconId,description,const DeepCollectionEquality().hash(costs));

@override
String toString() {
  return 'ModuleDetailResponse(moduleId: $moduleId, moduleCode: $moduleCode, nameKo: $nameKo, iconId: $iconId, description: $description, costs: $costs)';
}


}

/// @nodoc
abstract mixin class $ModuleDetailResponseCopyWith<$Res>  {
  factory $ModuleDetailResponseCopyWith(ModuleDetailResponse value, $Res Function(ModuleDetailResponse) _then) = _$ModuleDetailResponseCopyWithImpl;
@useResult
$Res call({
 int moduleId, String moduleCode, String nameKo, String iconId, String description, List<CostResponse> costs
});




}
/// @nodoc
class _$ModuleDetailResponseCopyWithImpl<$Res>
    implements $ModuleDetailResponseCopyWith<$Res> {
  _$ModuleDetailResponseCopyWithImpl(this._self, this._then);

  final ModuleDetailResponse _self;
  final $Res Function(ModuleDetailResponse) _then;

/// Create a copy of ModuleDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? moduleId = null,Object? moduleCode = null,Object? nameKo = null,Object? iconId = null,Object? description = null,Object? costs = null,}) {
  return _then(_self.copyWith(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int,moduleCode: null == moduleCode ? _self.moduleCode : moduleCode // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,costs: null == costs ? _self.costs : costs // ignore: cast_nullable_to_non_nullable
as List<CostResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ModuleDetailResponse].
extension ModuleDetailResponsePatterns on ModuleDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModuleDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModuleDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModuleDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _ModuleDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModuleDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ModuleDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int moduleId,  String moduleCode,  String nameKo,  String iconId,  String description,  List<CostResponse> costs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModuleDetailResponse() when $default != null:
return $default(_that.moduleId,_that.moduleCode,_that.nameKo,_that.iconId,_that.description,_that.costs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int moduleId,  String moduleCode,  String nameKo,  String iconId,  String description,  List<CostResponse> costs)  $default,) {final _that = this;
switch (_that) {
case _ModuleDetailResponse():
return $default(_that.moduleId,_that.moduleCode,_that.nameKo,_that.iconId,_that.description,_that.costs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int moduleId,  String moduleCode,  String nameKo,  String iconId,  String description,  List<CostResponse> costs)?  $default,) {final _that = this;
switch (_that) {
case _ModuleDetailResponse() when $default != null:
return $default(_that.moduleId,_that.moduleCode,_that.nameKo,_that.iconId,_that.description,_that.costs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModuleDetailResponse implements ModuleDetailResponse {
  const _ModuleDetailResponse({required this.moduleId, required this.moduleCode, required this.nameKo, required this.iconId, required this.description, required final  List<CostResponse> costs}): _costs = costs;
  factory _ModuleDetailResponse.fromJson(Map<String, dynamic> json) => _$ModuleDetailResponseFromJson(json);

@override final  int moduleId;
@override final  String moduleCode;
@override final  String nameKo;
@override final  String iconId;
@override final  String description;
 final  List<CostResponse> _costs;
@override List<CostResponse> get costs {
  if (_costs is EqualUnmodifiableListView) return _costs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_costs);
}


/// Create a copy of ModuleDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleDetailResponseCopyWith<_ModuleDetailResponse> get copyWith => __$ModuleDetailResponseCopyWithImpl<_ModuleDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModuleDetailResponse&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.moduleCode, moduleCode) || other.moduleCode == moduleCode)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.iconId, iconId) || other.iconId == iconId)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._costs, _costs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleId,moduleCode,nameKo,iconId,description,const DeepCollectionEquality().hash(_costs));

@override
String toString() {
  return 'ModuleDetailResponse(moduleId: $moduleId, moduleCode: $moduleCode, nameKo: $nameKo, iconId: $iconId, description: $description, costs: $costs)';
}


}

/// @nodoc
abstract mixin class _$ModuleDetailResponseCopyWith<$Res> implements $ModuleDetailResponseCopyWith<$Res> {
  factory _$ModuleDetailResponseCopyWith(_ModuleDetailResponse value, $Res Function(_ModuleDetailResponse) _then) = __$ModuleDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 int moduleId, String moduleCode, String nameKo, String iconId, String description, List<CostResponse> costs
});




}
/// @nodoc
class __$ModuleDetailResponseCopyWithImpl<$Res>
    implements _$ModuleDetailResponseCopyWith<$Res> {
  __$ModuleDetailResponseCopyWithImpl(this._self, this._then);

  final _ModuleDetailResponse _self;
  final $Res Function(_ModuleDetailResponse) _then;

/// Create a copy of ModuleDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? moduleId = null,Object? moduleCode = null,Object? nameKo = null,Object? iconId = null,Object? description = null,Object? costs = null,}) {
  return _then(_ModuleDetailResponse(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as int,moduleCode: null == moduleCode ? _self.moduleCode : moduleCode // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,costs: null == costs ? _self._costs : costs // ignore: cast_nullable_to_non_nullable
as List<CostResponse>,
  ));
}


}

// dart format on

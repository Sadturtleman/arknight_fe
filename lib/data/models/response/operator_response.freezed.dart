// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operator_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OperatorResponse {

 int get characterId; String get code; String get name; String get rarity; ProfessionResponse get profession; SubProfessionResponse get subProfession; String get iconUrl;
/// Create a copy of OperatorResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperatorResponseCopyWith<OperatorResponse> get copyWith => _$OperatorResponseCopyWithImpl<OperatorResponse>(this as OperatorResponse, _$identity);

  /// Serializes this OperatorResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OperatorResponse&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.profession, profession) || other.profession == profession)&&(identical(other.subProfession, subProfession) || other.subProfession == subProfession)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,characterId,code,name,rarity,profession,subProfession,iconUrl);

@override
String toString() {
  return 'OperatorResponse(characterId: $characterId, code: $code, name: $name, rarity: $rarity, profession: $profession, subProfession: $subProfession, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class $OperatorResponseCopyWith<$Res>  {
  factory $OperatorResponseCopyWith(OperatorResponse value, $Res Function(OperatorResponse) _then) = _$OperatorResponseCopyWithImpl;
@useResult
$Res call({
 int characterId, String code, String name, String rarity, ProfessionResponse profession, SubProfessionResponse subProfession, String iconUrl
});


$ProfessionResponseCopyWith<$Res> get profession;$SubProfessionResponseCopyWith<$Res> get subProfession;

}
/// @nodoc
class _$OperatorResponseCopyWithImpl<$Res>
    implements $OperatorResponseCopyWith<$Res> {
  _$OperatorResponseCopyWithImpl(this._self, this._then);

  final OperatorResponse _self;
  final $Res Function(OperatorResponse) _then;

/// Create a copy of OperatorResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? characterId = null,Object? code = null,Object? name = null,Object? rarity = null,Object? profession = null,Object? subProfession = null,Object? iconUrl = null,}) {
  return _then(_self.copyWith(
characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String,profession: null == profession ? _self.profession : profession // ignore: cast_nullable_to_non_nullable
as ProfessionResponse,subProfession: null == subProfession ? _self.subProfession : subProfession // ignore: cast_nullable_to_non_nullable
as SubProfessionResponse,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of OperatorResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfessionResponseCopyWith<$Res> get profession {
  
  return $ProfessionResponseCopyWith<$Res>(_self.profession, (value) {
    return _then(_self.copyWith(profession: value));
  });
}/// Create a copy of OperatorResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubProfessionResponseCopyWith<$Res> get subProfession {
  
  return $SubProfessionResponseCopyWith<$Res>(_self.subProfession, (value) {
    return _then(_self.copyWith(subProfession: value));
  });
}
}


/// Adds pattern-matching-related methods to [OperatorResponse].
extension OperatorResponsePatterns on OperatorResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperatorResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperatorResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperatorResponse value)  $default,){
final _that = this;
switch (_that) {
case _OperatorResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperatorResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OperatorResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int characterId,  String code,  String name,  String rarity,  ProfessionResponse profession,  SubProfessionResponse subProfession,  String iconUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperatorResponse() when $default != null:
return $default(_that.characterId,_that.code,_that.name,_that.rarity,_that.profession,_that.subProfession,_that.iconUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int characterId,  String code,  String name,  String rarity,  ProfessionResponse profession,  SubProfessionResponse subProfession,  String iconUrl)  $default,) {final _that = this;
switch (_that) {
case _OperatorResponse():
return $default(_that.characterId,_that.code,_that.name,_that.rarity,_that.profession,_that.subProfession,_that.iconUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int characterId,  String code,  String name,  String rarity,  ProfessionResponse profession,  SubProfessionResponse subProfession,  String iconUrl)?  $default,) {final _that = this;
switch (_that) {
case _OperatorResponse() when $default != null:
return $default(_that.characterId,_that.code,_that.name,_that.rarity,_that.profession,_that.subProfession,_that.iconUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OperatorResponse implements OperatorResponse {
  const _OperatorResponse({required this.characterId, required this.code, required this.name, required this.rarity, required this.profession, required this.subProfession, required this.iconUrl});
  factory _OperatorResponse.fromJson(Map<String, dynamic> json) => _$OperatorResponseFromJson(json);

@override final  int characterId;
@override final  String code;
@override final  String name;
@override final  String rarity;
@override final  ProfessionResponse profession;
@override final  SubProfessionResponse subProfession;
@override final  String iconUrl;

/// Create a copy of OperatorResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperatorResponseCopyWith<_OperatorResponse> get copyWith => __$OperatorResponseCopyWithImpl<_OperatorResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperatorResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OperatorResponse&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.profession, profession) || other.profession == profession)&&(identical(other.subProfession, subProfession) || other.subProfession == subProfession)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,characterId,code,name,rarity,profession,subProfession,iconUrl);

@override
String toString() {
  return 'OperatorResponse(characterId: $characterId, code: $code, name: $name, rarity: $rarity, profession: $profession, subProfession: $subProfession, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class _$OperatorResponseCopyWith<$Res> implements $OperatorResponseCopyWith<$Res> {
  factory _$OperatorResponseCopyWith(_OperatorResponse value, $Res Function(_OperatorResponse) _then) = __$OperatorResponseCopyWithImpl;
@override @useResult
$Res call({
 int characterId, String code, String name, String rarity, ProfessionResponse profession, SubProfessionResponse subProfession, String iconUrl
});


@override $ProfessionResponseCopyWith<$Res> get profession;@override $SubProfessionResponseCopyWith<$Res> get subProfession;

}
/// @nodoc
class __$OperatorResponseCopyWithImpl<$Res>
    implements _$OperatorResponseCopyWith<$Res> {
  __$OperatorResponseCopyWithImpl(this._self, this._then);

  final _OperatorResponse _self;
  final $Res Function(_OperatorResponse) _then;

/// Create a copy of OperatorResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? characterId = null,Object? code = null,Object? name = null,Object? rarity = null,Object? profession = null,Object? subProfession = null,Object? iconUrl = null,}) {
  return _then(_OperatorResponse(
characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String,profession: null == profession ? _self.profession : profession // ignore: cast_nullable_to_non_nullable
as ProfessionResponse,subProfession: null == subProfession ? _self.subProfession : subProfession // ignore: cast_nullable_to_non_nullable
as SubProfessionResponse,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of OperatorResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfessionResponseCopyWith<$Res> get profession {
  
  return $ProfessionResponseCopyWith<$Res>(_self.profession, (value) {
    return _then(_self.copyWith(profession: value));
  });
}/// Create a copy of OperatorResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubProfessionResponseCopyWith<$Res> get subProfession {
  
  return $SubProfessionResponseCopyWith<$Res>(_self.subProfession, (value) {
    return _then(_self.copyWith(subProfession: value));
  });
}
}


/// @nodoc
mixin _$ProfessionResponse {

 String get professionId; String get name;
/// Create a copy of ProfessionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfessionResponseCopyWith<ProfessionResponse> get copyWith => _$ProfessionResponseCopyWithImpl<ProfessionResponse>(this as ProfessionResponse, _$identity);

  /// Serializes this ProfessionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfessionResponse&&(identical(other.professionId, professionId) || other.professionId == professionId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,professionId,name);

@override
String toString() {
  return 'ProfessionResponse(professionId: $professionId, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProfessionResponseCopyWith<$Res>  {
  factory $ProfessionResponseCopyWith(ProfessionResponse value, $Res Function(ProfessionResponse) _then) = _$ProfessionResponseCopyWithImpl;
@useResult
$Res call({
 String professionId, String name
});




}
/// @nodoc
class _$ProfessionResponseCopyWithImpl<$Res>
    implements $ProfessionResponseCopyWith<$Res> {
  _$ProfessionResponseCopyWithImpl(this._self, this._then);

  final ProfessionResponse _self;
  final $Res Function(ProfessionResponse) _then;

/// Create a copy of ProfessionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? professionId = null,Object? name = null,}) {
  return _then(_self.copyWith(
professionId: null == professionId ? _self.professionId : professionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfessionResponse].
extension ProfessionResponsePatterns on ProfessionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfessionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfessionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfessionResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProfessionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfessionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProfessionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String professionId,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfessionResponse() when $default != null:
return $default(_that.professionId,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String professionId,  String name)  $default,) {final _that = this;
switch (_that) {
case _ProfessionResponse():
return $default(_that.professionId,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String professionId,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ProfessionResponse() when $default != null:
return $default(_that.professionId,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfessionResponse implements ProfessionResponse {
  const _ProfessionResponse({required this.professionId, required this.name});
  factory _ProfessionResponse.fromJson(Map<String, dynamic> json) => _$ProfessionResponseFromJson(json);

@override final  String professionId;
@override final  String name;

/// Create a copy of ProfessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfessionResponseCopyWith<_ProfessionResponse> get copyWith => __$ProfessionResponseCopyWithImpl<_ProfessionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfessionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfessionResponse&&(identical(other.professionId, professionId) || other.professionId == professionId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,professionId,name);

@override
String toString() {
  return 'ProfessionResponse(professionId: $professionId, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProfessionResponseCopyWith<$Res> implements $ProfessionResponseCopyWith<$Res> {
  factory _$ProfessionResponseCopyWith(_ProfessionResponse value, $Res Function(_ProfessionResponse) _then) = __$ProfessionResponseCopyWithImpl;
@override @useResult
$Res call({
 String professionId, String name
});




}
/// @nodoc
class __$ProfessionResponseCopyWithImpl<$Res>
    implements _$ProfessionResponseCopyWith<$Res> {
  __$ProfessionResponseCopyWithImpl(this._self, this._then);

  final _ProfessionResponse _self;
  final $Res Function(_ProfessionResponse) _then;

/// Create a copy of ProfessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? professionId = null,Object? name = null,}) {
  return _then(_ProfessionResponse(
professionId: null == professionId ? _self.professionId : professionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SubProfessionResponse {

 String get subProfessionId; String get name;
/// Create a copy of SubProfessionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubProfessionResponseCopyWith<SubProfessionResponse> get copyWith => _$SubProfessionResponseCopyWithImpl<SubProfessionResponse>(this as SubProfessionResponse, _$identity);

  /// Serializes this SubProfessionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubProfessionResponse&&(identical(other.subProfessionId, subProfessionId) || other.subProfessionId == subProfessionId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subProfessionId,name);

@override
String toString() {
  return 'SubProfessionResponse(subProfessionId: $subProfessionId, name: $name)';
}


}

/// @nodoc
abstract mixin class $SubProfessionResponseCopyWith<$Res>  {
  factory $SubProfessionResponseCopyWith(SubProfessionResponse value, $Res Function(SubProfessionResponse) _then) = _$SubProfessionResponseCopyWithImpl;
@useResult
$Res call({
 String subProfessionId, String name
});




}
/// @nodoc
class _$SubProfessionResponseCopyWithImpl<$Res>
    implements $SubProfessionResponseCopyWith<$Res> {
  _$SubProfessionResponseCopyWithImpl(this._self, this._then);

  final SubProfessionResponse _self;
  final $Res Function(SubProfessionResponse) _then;

/// Create a copy of SubProfessionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subProfessionId = null,Object? name = null,}) {
  return _then(_self.copyWith(
subProfessionId: null == subProfessionId ? _self.subProfessionId : subProfessionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubProfessionResponse].
extension SubProfessionResponsePatterns on SubProfessionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubProfessionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubProfessionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubProfessionResponse value)  $default,){
final _that = this;
switch (_that) {
case _SubProfessionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubProfessionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SubProfessionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subProfessionId,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubProfessionResponse() when $default != null:
return $default(_that.subProfessionId,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subProfessionId,  String name)  $default,) {final _that = this;
switch (_that) {
case _SubProfessionResponse():
return $default(_that.subProfessionId,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subProfessionId,  String name)?  $default,) {final _that = this;
switch (_that) {
case _SubProfessionResponse() when $default != null:
return $default(_that.subProfessionId,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubProfessionResponse implements SubProfessionResponse {
  const _SubProfessionResponse({required this.subProfessionId, required this.name});
  factory _SubProfessionResponse.fromJson(Map<String, dynamic> json) => _$SubProfessionResponseFromJson(json);

@override final  String subProfessionId;
@override final  String name;

/// Create a copy of SubProfessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubProfessionResponseCopyWith<_SubProfessionResponse> get copyWith => __$SubProfessionResponseCopyWithImpl<_SubProfessionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubProfessionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubProfessionResponse&&(identical(other.subProfessionId, subProfessionId) || other.subProfessionId == subProfessionId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subProfessionId,name);

@override
String toString() {
  return 'SubProfessionResponse(subProfessionId: $subProfessionId, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SubProfessionResponseCopyWith<$Res> implements $SubProfessionResponseCopyWith<$Res> {
  factory _$SubProfessionResponseCopyWith(_SubProfessionResponse value, $Res Function(_SubProfessionResponse) _then) = __$SubProfessionResponseCopyWithImpl;
@override @useResult
$Res call({
 String subProfessionId, String name
});




}
/// @nodoc
class __$SubProfessionResponseCopyWithImpl<$Res>
    implements _$SubProfessionResponseCopyWith<$Res> {
  __$SubProfessionResponseCopyWithImpl(this._self, this._then);

  final _SubProfessionResponse _self;
  final $Res Function(_SubProfessionResponse) _then;

/// Create a copy of SubProfessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subProfessionId = null,Object? name = null,}) {
  return _then(_SubProfessionResponse(
subProfessionId: null == subProfessionId ? _self.subProfessionId : subProfessionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CharacterDetailResponse {

 int get characterId; String get code; String get name; String get rarity; ProfessionResponse get profession; SubProfessionResponse get subProfession; List<OperatorStatResponse> get stat; String get itemUsage; String get itemDesc; String get iconUrl; String get portraitUrl;
/// Create a copy of CharacterDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDetailResponseCopyWith<CharacterDetailResponse> get copyWith => _$CharacterDetailResponseCopyWithImpl<CharacterDetailResponse>(this as CharacterDetailResponse, _$identity);

  /// Serializes this CharacterDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDetailResponse&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.profession, profession) || other.profession == profession)&&(identical(other.subProfession, subProfession) || other.subProfession == subProfession)&&const DeepCollectionEquality().equals(other.stat, stat)&&(identical(other.itemUsage, itemUsage) || other.itemUsage == itemUsage)&&(identical(other.itemDesc, itemDesc) || other.itemDesc == itemDesc)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.portraitUrl, portraitUrl) || other.portraitUrl == portraitUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,characterId,code,name,rarity,profession,subProfession,const DeepCollectionEquality().hash(stat),itemUsage,itemDesc,iconUrl,portraitUrl);

@override
String toString() {
  return 'CharacterDetailResponse(characterId: $characterId, code: $code, name: $name, rarity: $rarity, profession: $profession, subProfession: $subProfession, stat: $stat, itemUsage: $itemUsage, itemDesc: $itemDesc, iconUrl: $iconUrl, portraitUrl: $portraitUrl)';
}


}

/// @nodoc
abstract mixin class $CharacterDetailResponseCopyWith<$Res>  {
  factory $CharacterDetailResponseCopyWith(CharacterDetailResponse value, $Res Function(CharacterDetailResponse) _then) = _$CharacterDetailResponseCopyWithImpl;
@useResult
$Res call({
 int characterId, String code, String name, String rarity, ProfessionResponse profession, SubProfessionResponse subProfession, List<OperatorStatResponse> stat, String itemUsage, String itemDesc, String iconUrl, String portraitUrl
});


$ProfessionResponseCopyWith<$Res> get profession;$SubProfessionResponseCopyWith<$Res> get subProfession;

}
/// @nodoc
class _$CharacterDetailResponseCopyWithImpl<$Res>
    implements $CharacterDetailResponseCopyWith<$Res> {
  _$CharacterDetailResponseCopyWithImpl(this._self, this._then);

  final CharacterDetailResponse _self;
  final $Res Function(CharacterDetailResponse) _then;

/// Create a copy of CharacterDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? characterId = null,Object? code = null,Object? name = null,Object? rarity = null,Object? profession = null,Object? subProfession = null,Object? stat = null,Object? itemUsage = null,Object? itemDesc = null,Object? iconUrl = null,Object? portraitUrl = null,}) {
  return _then(_self.copyWith(
characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String,profession: null == profession ? _self.profession : profession // ignore: cast_nullable_to_non_nullable
as ProfessionResponse,subProfession: null == subProfession ? _self.subProfession : subProfession // ignore: cast_nullable_to_non_nullable
as SubProfessionResponse,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as List<OperatorStatResponse>,itemUsage: null == itemUsage ? _self.itemUsage : itemUsage // ignore: cast_nullable_to_non_nullable
as String,itemDesc: null == itemDesc ? _self.itemDesc : itemDesc // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,portraitUrl: null == portraitUrl ? _self.portraitUrl : portraitUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CharacterDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfessionResponseCopyWith<$Res> get profession {
  
  return $ProfessionResponseCopyWith<$Res>(_self.profession, (value) {
    return _then(_self.copyWith(profession: value));
  });
}/// Create a copy of CharacterDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubProfessionResponseCopyWith<$Res> get subProfession {
  
  return $SubProfessionResponseCopyWith<$Res>(_self.subProfession, (value) {
    return _then(_self.copyWith(subProfession: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharacterDetailResponse].
extension CharacterDetailResponsePatterns on CharacterDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _CharacterDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int characterId,  String code,  String name,  String rarity,  ProfessionResponse profession,  SubProfessionResponse subProfession,  List<OperatorStatResponse> stat,  String itemUsage,  String itemDesc,  String iconUrl,  String portraitUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterDetailResponse() when $default != null:
return $default(_that.characterId,_that.code,_that.name,_that.rarity,_that.profession,_that.subProfession,_that.stat,_that.itemUsage,_that.itemDesc,_that.iconUrl,_that.portraitUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int characterId,  String code,  String name,  String rarity,  ProfessionResponse profession,  SubProfessionResponse subProfession,  List<OperatorStatResponse> stat,  String itemUsage,  String itemDesc,  String iconUrl,  String portraitUrl)  $default,) {final _that = this;
switch (_that) {
case _CharacterDetailResponse():
return $default(_that.characterId,_that.code,_that.name,_that.rarity,_that.profession,_that.subProfession,_that.stat,_that.itemUsage,_that.itemDesc,_that.iconUrl,_that.portraitUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int characterId,  String code,  String name,  String rarity,  ProfessionResponse profession,  SubProfessionResponse subProfession,  List<OperatorStatResponse> stat,  String itemUsage,  String itemDesc,  String iconUrl,  String portraitUrl)?  $default,) {final _that = this;
switch (_that) {
case _CharacterDetailResponse() when $default != null:
return $default(_that.characterId,_that.code,_that.name,_that.rarity,_that.profession,_that.subProfession,_that.stat,_that.itemUsage,_that.itemDesc,_that.iconUrl,_that.portraitUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CharacterDetailResponse implements CharacterDetailResponse {
  const _CharacterDetailResponse({required this.characterId, required this.code, required this.name, required this.rarity, required this.profession, required this.subProfession, required final  List<OperatorStatResponse> stat, required this.itemUsage, required this.itemDesc, required this.iconUrl, required this.portraitUrl}): _stat = stat;
  factory _CharacterDetailResponse.fromJson(Map<String, dynamic> json) => _$CharacterDetailResponseFromJson(json);

@override final  int characterId;
@override final  String code;
@override final  String name;
@override final  String rarity;
@override final  ProfessionResponse profession;
@override final  SubProfessionResponse subProfession;
 final  List<OperatorStatResponse> _stat;
@override List<OperatorStatResponse> get stat {
  if (_stat is EqualUnmodifiableListView) return _stat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stat);
}

@override final  String itemUsage;
@override final  String itemDesc;
@override final  String iconUrl;
@override final  String portraitUrl;

/// Create a copy of CharacterDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterDetailResponseCopyWith<_CharacterDetailResponse> get copyWith => __$CharacterDetailResponseCopyWithImpl<_CharacterDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterDetailResponse&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.profession, profession) || other.profession == profession)&&(identical(other.subProfession, subProfession) || other.subProfession == subProfession)&&const DeepCollectionEquality().equals(other._stat, _stat)&&(identical(other.itemUsage, itemUsage) || other.itemUsage == itemUsage)&&(identical(other.itemDesc, itemDesc) || other.itemDesc == itemDesc)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.portraitUrl, portraitUrl) || other.portraitUrl == portraitUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,characterId,code,name,rarity,profession,subProfession,const DeepCollectionEquality().hash(_stat),itemUsage,itemDesc,iconUrl,portraitUrl);

@override
String toString() {
  return 'CharacterDetailResponse(characterId: $characterId, code: $code, name: $name, rarity: $rarity, profession: $profession, subProfession: $subProfession, stat: $stat, itemUsage: $itemUsage, itemDesc: $itemDesc, iconUrl: $iconUrl, portraitUrl: $portraitUrl)';
}


}

/// @nodoc
abstract mixin class _$CharacterDetailResponseCopyWith<$Res> implements $CharacterDetailResponseCopyWith<$Res> {
  factory _$CharacterDetailResponseCopyWith(_CharacterDetailResponse value, $Res Function(_CharacterDetailResponse) _then) = __$CharacterDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 int characterId, String code, String name, String rarity, ProfessionResponse profession, SubProfessionResponse subProfession, List<OperatorStatResponse> stat, String itemUsage, String itemDesc, String iconUrl, String portraitUrl
});


@override $ProfessionResponseCopyWith<$Res> get profession;@override $SubProfessionResponseCopyWith<$Res> get subProfession;

}
/// @nodoc
class __$CharacterDetailResponseCopyWithImpl<$Res>
    implements _$CharacterDetailResponseCopyWith<$Res> {
  __$CharacterDetailResponseCopyWithImpl(this._self, this._then);

  final _CharacterDetailResponse _self;
  final $Res Function(_CharacterDetailResponse) _then;

/// Create a copy of CharacterDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? characterId = null,Object? code = null,Object? name = null,Object? rarity = null,Object? profession = null,Object? subProfession = null,Object? stat = null,Object? itemUsage = null,Object? itemDesc = null,Object? iconUrl = null,Object? portraitUrl = null,}) {
  return _then(_CharacterDetailResponse(
characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String,profession: null == profession ? _self.profession : profession // ignore: cast_nullable_to_non_nullable
as ProfessionResponse,subProfession: null == subProfession ? _self.subProfession : subProfession // ignore: cast_nullable_to_non_nullable
as SubProfessionResponse,stat: null == stat ? _self._stat : stat // ignore: cast_nullable_to_non_nullable
as List<OperatorStatResponse>,itemUsage: null == itemUsage ? _self.itemUsage : itemUsage // ignore: cast_nullable_to_non_nullable
as String,itemDesc: null == itemDesc ? _self.itemDesc : itemDesc // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,portraitUrl: null == portraitUrl ? _self.portraitUrl : portraitUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CharacterDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfessionResponseCopyWith<$Res> get profession {
  
  return $ProfessionResponseCopyWith<$Res>(_self.profession, (value) {
    return _then(_self.copyWith(profession: value));
  });
}/// Create a copy of CharacterDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubProfessionResponseCopyWith<$Res> get subProfession {
  
  return $SubProfessionResponseCopyWith<$Res>(_self.subProfession, (value) {
    return _then(_self.copyWith(subProfession: value));
  });
}
}


/// @nodoc
mixin _$OperatorStatResponse {

 int get phase; int get maxLevel; int get baseHp; int get baseAtk; int get baseDef; int get maxHp; int get maxAtk; int get maxDef; int get magicResistance; int get cost; int get blockCnt; RangeResponse get range;
/// Create a copy of OperatorStatResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperatorStatResponseCopyWith<OperatorStatResponse> get copyWith => _$OperatorStatResponseCopyWithImpl<OperatorStatResponse>(this as OperatorStatResponse, _$identity);

  /// Serializes this OperatorStatResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OperatorStatResponse&&(identical(other.phase, phase) || other.phase == phase)&&(identical(other.maxLevel, maxLevel) || other.maxLevel == maxLevel)&&(identical(other.baseHp, baseHp) || other.baseHp == baseHp)&&(identical(other.baseAtk, baseAtk) || other.baseAtk == baseAtk)&&(identical(other.baseDef, baseDef) || other.baseDef == baseDef)&&(identical(other.maxHp, maxHp) || other.maxHp == maxHp)&&(identical(other.maxAtk, maxAtk) || other.maxAtk == maxAtk)&&(identical(other.maxDef, maxDef) || other.maxDef == maxDef)&&(identical(other.magicResistance, magicResistance) || other.magicResistance == magicResistance)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.blockCnt, blockCnt) || other.blockCnt == blockCnt)&&(identical(other.range, range) || other.range == range));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phase,maxLevel,baseHp,baseAtk,baseDef,maxHp,maxAtk,maxDef,magicResistance,cost,blockCnt,range);

@override
String toString() {
  return 'OperatorStatResponse(phase: $phase, maxLevel: $maxLevel, baseHp: $baseHp, baseAtk: $baseAtk, baseDef: $baseDef, maxHp: $maxHp, maxAtk: $maxAtk, maxDef: $maxDef, magicResistance: $magicResistance, cost: $cost, blockCnt: $blockCnt, range: $range)';
}


}

/// @nodoc
abstract mixin class $OperatorStatResponseCopyWith<$Res>  {
  factory $OperatorStatResponseCopyWith(OperatorStatResponse value, $Res Function(OperatorStatResponse) _then) = _$OperatorStatResponseCopyWithImpl;
@useResult
$Res call({
 int phase, int maxLevel, int baseHp, int baseAtk, int baseDef, int maxHp, int maxAtk, int maxDef, int magicResistance, int cost, int blockCnt, RangeResponse range
});


$RangeResponseCopyWith<$Res> get range;

}
/// @nodoc
class _$OperatorStatResponseCopyWithImpl<$Res>
    implements $OperatorStatResponseCopyWith<$Res> {
  _$OperatorStatResponseCopyWithImpl(this._self, this._then);

  final OperatorStatResponse _self;
  final $Res Function(OperatorStatResponse) _then;

/// Create a copy of OperatorStatResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phase = null,Object? maxLevel = null,Object? baseHp = null,Object? baseAtk = null,Object? baseDef = null,Object? maxHp = null,Object? maxAtk = null,Object? maxDef = null,Object? magicResistance = null,Object? cost = null,Object? blockCnt = null,Object? range = null,}) {
  return _then(_self.copyWith(
phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as int,maxLevel: null == maxLevel ? _self.maxLevel : maxLevel // ignore: cast_nullable_to_non_nullable
as int,baseHp: null == baseHp ? _self.baseHp : baseHp // ignore: cast_nullable_to_non_nullable
as int,baseAtk: null == baseAtk ? _self.baseAtk : baseAtk // ignore: cast_nullable_to_non_nullable
as int,baseDef: null == baseDef ? _self.baseDef : baseDef // ignore: cast_nullable_to_non_nullable
as int,maxHp: null == maxHp ? _self.maxHp : maxHp // ignore: cast_nullable_to_non_nullable
as int,maxAtk: null == maxAtk ? _self.maxAtk : maxAtk // ignore: cast_nullable_to_non_nullable
as int,maxDef: null == maxDef ? _self.maxDef : maxDef // ignore: cast_nullable_to_non_nullable
as int,magicResistance: null == magicResistance ? _self.magicResistance : magicResistance // ignore: cast_nullable_to_non_nullable
as int,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,blockCnt: null == blockCnt ? _self.blockCnt : blockCnt // ignore: cast_nullable_to_non_nullable
as int,range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as RangeResponse,
  ));
}
/// Create a copy of OperatorStatResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RangeResponseCopyWith<$Res> get range {
  
  return $RangeResponseCopyWith<$Res>(_self.range, (value) {
    return _then(_self.copyWith(range: value));
  });
}
}


/// Adds pattern-matching-related methods to [OperatorStatResponse].
extension OperatorStatResponsePatterns on OperatorStatResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperatorStatResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperatorStatResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperatorStatResponse value)  $default,){
final _that = this;
switch (_that) {
case _OperatorStatResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperatorStatResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OperatorStatResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int phase,  int maxLevel,  int baseHp,  int baseAtk,  int baseDef,  int maxHp,  int maxAtk,  int maxDef,  int magicResistance,  int cost,  int blockCnt,  RangeResponse range)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperatorStatResponse() when $default != null:
return $default(_that.phase,_that.maxLevel,_that.baseHp,_that.baseAtk,_that.baseDef,_that.maxHp,_that.maxAtk,_that.maxDef,_that.magicResistance,_that.cost,_that.blockCnt,_that.range);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int phase,  int maxLevel,  int baseHp,  int baseAtk,  int baseDef,  int maxHp,  int maxAtk,  int maxDef,  int magicResistance,  int cost,  int blockCnt,  RangeResponse range)  $default,) {final _that = this;
switch (_that) {
case _OperatorStatResponse():
return $default(_that.phase,_that.maxLevel,_that.baseHp,_that.baseAtk,_that.baseDef,_that.maxHp,_that.maxAtk,_that.maxDef,_that.magicResistance,_that.cost,_that.blockCnt,_that.range);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int phase,  int maxLevel,  int baseHp,  int baseAtk,  int baseDef,  int maxHp,  int maxAtk,  int maxDef,  int magicResistance,  int cost,  int blockCnt,  RangeResponse range)?  $default,) {final _that = this;
switch (_that) {
case _OperatorStatResponse() when $default != null:
return $default(_that.phase,_that.maxLevel,_that.baseHp,_that.baseAtk,_that.baseDef,_that.maxHp,_that.maxAtk,_that.maxDef,_that.magicResistance,_that.cost,_that.blockCnt,_that.range);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OperatorStatResponse implements OperatorStatResponse {
  const _OperatorStatResponse({required this.phase, required this.maxLevel, required this.baseHp, required this.baseAtk, required this.baseDef, required this.maxHp, required this.maxAtk, required this.maxDef, required this.magicResistance, required this.cost, required this.blockCnt, required this.range});
  factory _OperatorStatResponse.fromJson(Map<String, dynamic> json) => _$OperatorStatResponseFromJson(json);

@override final  int phase;
@override final  int maxLevel;
@override final  int baseHp;
@override final  int baseAtk;
@override final  int baseDef;
@override final  int maxHp;
@override final  int maxAtk;
@override final  int maxDef;
@override final  int magicResistance;
@override final  int cost;
@override final  int blockCnt;
@override final  RangeResponse range;

/// Create a copy of OperatorStatResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperatorStatResponseCopyWith<_OperatorStatResponse> get copyWith => __$OperatorStatResponseCopyWithImpl<_OperatorStatResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperatorStatResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OperatorStatResponse&&(identical(other.phase, phase) || other.phase == phase)&&(identical(other.maxLevel, maxLevel) || other.maxLevel == maxLevel)&&(identical(other.baseHp, baseHp) || other.baseHp == baseHp)&&(identical(other.baseAtk, baseAtk) || other.baseAtk == baseAtk)&&(identical(other.baseDef, baseDef) || other.baseDef == baseDef)&&(identical(other.maxHp, maxHp) || other.maxHp == maxHp)&&(identical(other.maxAtk, maxAtk) || other.maxAtk == maxAtk)&&(identical(other.maxDef, maxDef) || other.maxDef == maxDef)&&(identical(other.magicResistance, magicResistance) || other.magicResistance == magicResistance)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.blockCnt, blockCnt) || other.blockCnt == blockCnt)&&(identical(other.range, range) || other.range == range));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phase,maxLevel,baseHp,baseAtk,baseDef,maxHp,maxAtk,maxDef,magicResistance,cost,blockCnt,range);

@override
String toString() {
  return 'OperatorStatResponse(phase: $phase, maxLevel: $maxLevel, baseHp: $baseHp, baseAtk: $baseAtk, baseDef: $baseDef, maxHp: $maxHp, maxAtk: $maxAtk, maxDef: $maxDef, magicResistance: $magicResistance, cost: $cost, blockCnt: $blockCnt, range: $range)';
}


}

/// @nodoc
abstract mixin class _$OperatorStatResponseCopyWith<$Res> implements $OperatorStatResponseCopyWith<$Res> {
  factory _$OperatorStatResponseCopyWith(_OperatorStatResponse value, $Res Function(_OperatorStatResponse) _then) = __$OperatorStatResponseCopyWithImpl;
@override @useResult
$Res call({
 int phase, int maxLevel, int baseHp, int baseAtk, int baseDef, int maxHp, int maxAtk, int maxDef, int magicResistance, int cost, int blockCnt, RangeResponse range
});


@override $RangeResponseCopyWith<$Res> get range;

}
/// @nodoc
class __$OperatorStatResponseCopyWithImpl<$Res>
    implements _$OperatorStatResponseCopyWith<$Res> {
  __$OperatorStatResponseCopyWithImpl(this._self, this._then);

  final _OperatorStatResponse _self;
  final $Res Function(_OperatorStatResponse) _then;

/// Create a copy of OperatorStatResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phase = null,Object? maxLevel = null,Object? baseHp = null,Object? baseAtk = null,Object? baseDef = null,Object? maxHp = null,Object? maxAtk = null,Object? maxDef = null,Object? magicResistance = null,Object? cost = null,Object? blockCnt = null,Object? range = null,}) {
  return _then(_OperatorStatResponse(
phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as int,maxLevel: null == maxLevel ? _self.maxLevel : maxLevel // ignore: cast_nullable_to_non_nullable
as int,baseHp: null == baseHp ? _self.baseHp : baseHp // ignore: cast_nullable_to_non_nullable
as int,baseAtk: null == baseAtk ? _self.baseAtk : baseAtk // ignore: cast_nullable_to_non_nullable
as int,baseDef: null == baseDef ? _self.baseDef : baseDef // ignore: cast_nullable_to_non_nullable
as int,maxHp: null == maxHp ? _self.maxHp : maxHp // ignore: cast_nullable_to_non_nullable
as int,maxAtk: null == maxAtk ? _self.maxAtk : maxAtk // ignore: cast_nullable_to_non_nullable
as int,maxDef: null == maxDef ? _self.maxDef : maxDef // ignore: cast_nullable_to_non_nullable
as int,magicResistance: null == magicResistance ? _self.magicResistance : magicResistance // ignore: cast_nullable_to_non_nullable
as int,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,blockCnt: null == blockCnt ? _self.blockCnt : blockCnt // ignore: cast_nullable_to_non_nullable
as int,range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as RangeResponse,
  ));
}

/// Create a copy of OperatorStatResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RangeResponseCopyWith<$Res> get range {
  
  return $RangeResponseCopyWith<$Res>(_self.range, (value) {
    return _then(_self.copyWith(range: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionConfig {

 String get id; String get title; String get description; Widget? get icon; PermissionType get type;
/// Create a copy of PermissionConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionConfigCopyWith<PermissionConfig> get copyWith => _$PermissionConfigCopyWithImpl<PermissionConfig>(this as PermissionConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,type);



}

/// @nodoc
abstract mixin class $PermissionConfigCopyWith<$Res>  {
  factory $PermissionConfigCopyWith(PermissionConfig value, $Res Function(PermissionConfig) _then) = _$PermissionConfigCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, Widget? icon, PermissionType type
});




}
/// @nodoc
class _$PermissionConfigCopyWithImpl<$Res>
    implements $PermissionConfigCopyWith<$Res> {
  _$PermissionConfigCopyWithImpl(this._self, this._then);

  final PermissionConfig _self;
  final $Res Function(PermissionConfig) _then;

/// Create a copy of PermissionConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = freezed,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PermissionType,
  ));
}

}


/// Adds pattern-matching-related methods to [PermissionConfig].
extension PermissionConfigPatterns on PermissionConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionConfig value)  $default,){
final _that = this;
switch (_that) {
case _PermissionConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionConfig value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  Widget? icon,  PermissionType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionConfig() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  Widget? icon,  PermissionType type)  $default,) {final _that = this;
switch (_that) {
case _PermissionConfig():
return $default(_that.id,_that.title,_that.description,_that.icon,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  Widget? icon,  PermissionType type)?  $default,) {final _that = this;
switch (_that) {
case _PermissionConfig() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionConfig extends PermissionConfig {
  const _PermissionConfig({required this.id, required this.title, required this.description, this.icon, required this.type}): super._();
  

@override final  String id;
@override final  String title;
@override final  String description;
@override final  Widget? icon;
@override final  PermissionType type;

/// Create a copy of PermissionConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionConfigCopyWith<_PermissionConfig> get copyWith => __$PermissionConfigCopyWithImpl<_PermissionConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,type);



}

/// @nodoc
abstract mixin class _$PermissionConfigCopyWith<$Res> implements $PermissionConfigCopyWith<$Res> {
  factory _$PermissionConfigCopyWith(_PermissionConfig value, $Res Function(_PermissionConfig) _then) = __$PermissionConfigCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, Widget? icon, PermissionType type
});




}
/// @nodoc
class __$PermissionConfigCopyWithImpl<$Res>
    implements _$PermissionConfigCopyWith<$Res> {
  __$PermissionConfigCopyWithImpl(this._self, this._then);

  final _PermissionConfig _self;
  final $Res Function(_PermissionConfig) _then;

/// Create a copy of PermissionConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = freezed,Object? type = null,}) {
  return _then(_PermissionConfig(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PermissionType,
  ));
}


}

// dart format on

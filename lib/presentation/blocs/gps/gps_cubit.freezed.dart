// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gps_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GpsState {

 bool get loading; bool get gpsEnabled; bool get hasGpsPermission;
/// Create a copy of GpsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GpsStateCopyWith<GpsState> get copyWith => _$GpsStateCopyWithImpl<GpsState>(this as GpsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GpsState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.gpsEnabled, gpsEnabled) || other.gpsEnabled == gpsEnabled)&&(identical(other.hasGpsPermission, hasGpsPermission) || other.hasGpsPermission == hasGpsPermission));
}


@override
int get hashCode => Object.hash(runtimeType,loading,gpsEnabled,hasGpsPermission);

@override
String toString() {
  return 'GpsState(loading: $loading, gpsEnabled: $gpsEnabled, hasGpsPermission: $hasGpsPermission)';
}


}

/// @nodoc
abstract mixin class $GpsStateCopyWith<$Res>  {
  factory $GpsStateCopyWith(GpsState value, $Res Function(GpsState) _then) = _$GpsStateCopyWithImpl;
@useResult
$Res call({
 bool loading, bool gpsEnabled, bool hasGpsPermission
});




}
/// @nodoc
class _$GpsStateCopyWithImpl<$Res>
    implements $GpsStateCopyWith<$Res> {
  _$GpsStateCopyWithImpl(this._self, this._then);

  final GpsState _self;
  final $Res Function(GpsState) _then;

/// Create a copy of GpsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? gpsEnabled = null,Object? hasGpsPermission = null,}) {
  return _then(_self.copyWith(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,gpsEnabled: null == gpsEnabled ? _self.gpsEnabled : gpsEnabled // ignore: cast_nullable_to_non_nullable
as bool,hasGpsPermission: null == hasGpsPermission ? _self.hasGpsPermission : hasGpsPermission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GpsState].
extension GpsStatePatterns on GpsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GpsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GpsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GpsState value)  $default,){
final _that = this;
switch (_that) {
case _GpsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GpsState value)?  $default,){
final _that = this;
switch (_that) {
case _GpsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  bool gpsEnabled,  bool hasGpsPermission)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GpsState() when $default != null:
return $default(_that.loading,_that.gpsEnabled,_that.hasGpsPermission);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  bool gpsEnabled,  bool hasGpsPermission)  $default,) {final _that = this;
switch (_that) {
case _GpsState():
return $default(_that.loading,_that.gpsEnabled,_that.hasGpsPermission);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  bool gpsEnabled,  bool hasGpsPermission)?  $default,) {final _that = this;
switch (_that) {
case _GpsState() when $default != null:
return $default(_that.loading,_that.gpsEnabled,_that.hasGpsPermission);case _:
  return null;

}
}

}

/// @nodoc


class _GpsState implements GpsState {
  const _GpsState({this.loading = true, this.gpsEnabled = false, this.hasGpsPermission = false});
  

@override@JsonKey() final  bool loading;
@override@JsonKey() final  bool gpsEnabled;
@override@JsonKey() final  bool hasGpsPermission;

/// Create a copy of GpsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GpsStateCopyWith<_GpsState> get copyWith => __$GpsStateCopyWithImpl<_GpsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GpsState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.gpsEnabled, gpsEnabled) || other.gpsEnabled == gpsEnabled)&&(identical(other.hasGpsPermission, hasGpsPermission) || other.hasGpsPermission == hasGpsPermission));
}


@override
int get hashCode => Object.hash(runtimeType,loading,gpsEnabled,hasGpsPermission);

@override
String toString() {
  return 'GpsState(loading: $loading, gpsEnabled: $gpsEnabled, hasGpsPermission: $hasGpsPermission)';
}


}

/// @nodoc
abstract mixin class _$GpsStateCopyWith<$Res> implements $GpsStateCopyWith<$Res> {
  factory _$GpsStateCopyWith(_GpsState value, $Res Function(_GpsState) _then) = __$GpsStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, bool gpsEnabled, bool hasGpsPermission
});




}
/// @nodoc
class __$GpsStateCopyWithImpl<$Res>
    implements _$GpsStateCopyWith<$Res> {
  __$GpsStateCopyWithImpl(this._self, this._then);

  final _GpsState _self;
  final $Res Function(_GpsState) _then;

/// Create a copy of GpsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? gpsEnabled = null,Object? hasGpsPermission = null,}) {
  return _then(_GpsState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,gpsEnabled: null == gpsEnabled ? _self.gpsEnabled : gpsEnabled // ignore: cast_nullable_to_non_nullable
as bool,hasGpsPermission: null == hasGpsPermission ? _self.hasGpsPermission : hasGpsPermission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

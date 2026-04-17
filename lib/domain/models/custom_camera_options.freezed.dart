// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_camera_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomCameraOptions {

 MapPoint get center; double get zoom; double get bearing; double get pitch; EdgeInsets get padding;
/// Create a copy of CustomCameraOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomCameraOptionsCopyWith<CustomCameraOptions> get copyWith => _$CustomCameraOptionsCopyWithImpl<CustomCameraOptions>(this as CustomCameraOptions, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomCameraOptions&&(identical(other.center, center) || other.center == center)&&(identical(other.zoom, zoom) || other.zoom == zoom)&&(identical(other.bearing, bearing) || other.bearing == bearing)&&(identical(other.pitch, pitch) || other.pitch == pitch)&&(identical(other.padding, padding) || other.padding == padding));
}


@override
int get hashCode => Object.hash(runtimeType,center,zoom,bearing,pitch,padding);

@override
String toString() {
  return 'CustomCameraOptions(center: $center, zoom: $zoom, bearing: $bearing, pitch: $pitch, padding: $padding)';
}


}

/// @nodoc
abstract mixin class $CustomCameraOptionsCopyWith<$Res>  {
  factory $CustomCameraOptionsCopyWith(CustomCameraOptions value, $Res Function(CustomCameraOptions) _then) = _$CustomCameraOptionsCopyWithImpl;
@useResult
$Res call({
 MapPoint center, double zoom, double bearing, double pitch, EdgeInsets padding
});


$MapPointCopyWith<$Res> get center;

}
/// @nodoc
class _$CustomCameraOptionsCopyWithImpl<$Res>
    implements $CustomCameraOptionsCopyWith<$Res> {
  _$CustomCameraOptionsCopyWithImpl(this._self, this._then);

  final CustomCameraOptions _self;
  final $Res Function(CustomCameraOptions) _then;

/// Create a copy of CustomCameraOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? center = null,Object? zoom = null,Object? bearing = null,Object? pitch = null,Object? padding = null,}) {
  return _then(_self.copyWith(
center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as MapPoint,zoom: null == zoom ? _self.zoom : zoom // ignore: cast_nullable_to_non_nullable
as double,bearing: null == bearing ? _self.bearing : bearing // ignore: cast_nullable_to_non_nullable
as double,pitch: null == pitch ? _self.pitch : pitch // ignore: cast_nullable_to_non_nullable
as double,padding: null == padding ? _self.padding : padding // ignore: cast_nullable_to_non_nullable
as EdgeInsets,
  ));
}
/// Create a copy of CustomCameraOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapPointCopyWith<$Res> get center {
  
  return $MapPointCopyWith<$Res>(_self.center, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomCameraOptions].
extension CustomCameraOptionsPatterns on CustomCameraOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomCameraOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomCameraOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomCameraOptions value)  $default,){
final _that = this;
switch (_that) {
case _CustomCameraOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomCameraOptions value)?  $default,){
final _that = this;
switch (_that) {
case _CustomCameraOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MapPoint center,  double zoom,  double bearing,  double pitch,  EdgeInsets padding)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomCameraOptions() when $default != null:
return $default(_that.center,_that.zoom,_that.bearing,_that.pitch,_that.padding);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MapPoint center,  double zoom,  double bearing,  double pitch,  EdgeInsets padding)  $default,) {final _that = this;
switch (_that) {
case _CustomCameraOptions():
return $default(_that.center,_that.zoom,_that.bearing,_that.pitch,_that.padding);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MapPoint center,  double zoom,  double bearing,  double pitch,  EdgeInsets padding)?  $default,) {final _that = this;
switch (_that) {
case _CustomCameraOptions() when $default != null:
return $default(_that.center,_that.zoom,_that.bearing,_that.pitch,_that.padding);case _:
  return null;

}
}

}

/// @nodoc


class _CustomCameraOptions extends CustomCameraOptions {
  const _CustomCameraOptions({this.center = Constants.fallbackPosition, this.zoom = Constants.kDefaultZoom, this.bearing = 0, this.pitch = 0, this.padding = EdgeInsets.zero}): super._();
  

@override@JsonKey() final  MapPoint center;
@override@JsonKey() final  double zoom;
@override@JsonKey() final  double bearing;
@override@JsonKey() final  double pitch;
@override@JsonKey() final  EdgeInsets padding;

/// Create a copy of CustomCameraOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomCameraOptionsCopyWith<_CustomCameraOptions> get copyWith => __$CustomCameraOptionsCopyWithImpl<_CustomCameraOptions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomCameraOptions&&(identical(other.center, center) || other.center == center)&&(identical(other.zoom, zoom) || other.zoom == zoom)&&(identical(other.bearing, bearing) || other.bearing == bearing)&&(identical(other.pitch, pitch) || other.pitch == pitch)&&(identical(other.padding, padding) || other.padding == padding));
}


@override
int get hashCode => Object.hash(runtimeType,center,zoom,bearing,pitch,padding);

@override
String toString() {
  return 'CustomCameraOptions(center: $center, zoom: $zoom, bearing: $bearing, pitch: $pitch, padding: $padding)';
}


}

/// @nodoc
abstract mixin class _$CustomCameraOptionsCopyWith<$Res> implements $CustomCameraOptionsCopyWith<$Res> {
  factory _$CustomCameraOptionsCopyWith(_CustomCameraOptions value, $Res Function(_CustomCameraOptions) _then) = __$CustomCameraOptionsCopyWithImpl;
@override @useResult
$Res call({
 MapPoint center, double zoom, double bearing, double pitch, EdgeInsets padding
});


@override $MapPointCopyWith<$Res> get center;

}
/// @nodoc
class __$CustomCameraOptionsCopyWithImpl<$Res>
    implements _$CustomCameraOptionsCopyWith<$Res> {
  __$CustomCameraOptionsCopyWithImpl(this._self, this._then);

  final _CustomCameraOptions _self;
  final $Res Function(_CustomCameraOptions) _then;

/// Create a copy of CustomCameraOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? center = null,Object? zoom = null,Object? bearing = null,Object? pitch = null,Object? padding = null,}) {
  return _then(_CustomCameraOptions(
center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as MapPoint,zoom: null == zoom ? _self.zoom : zoom // ignore: cast_nullable_to_non_nullable
as double,bearing: null == bearing ? _self.bearing : bearing // ignore: cast_nullable_to_non_nullable
as double,pitch: null == pitch ? _self.pitch : pitch // ignore: cast_nullable_to_non_nullable
as double,padding: null == padding ? _self.padding : padding // ignore: cast_nullable_to_non_nullable
as EdgeInsets,
  ));
}

/// Create a copy of CustomCameraOptions
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapPointCopyWith<$Res> get center {
  
  return $MapPointCopyWith<$Res>(_self.center, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapInfo {

/// The linear distance between the first and last map point in meters (m).
 double get distance;/// The enclosed area of the polygon formed by the map points in square meters (m²).
 double get area;/// The total perimeter length of the polygon formed by the map points in meters (m).
 double get perimeter;
/// Create a copy of MapInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapInfoCopyWith<MapInfo> get copyWith => _$MapInfoCopyWithImpl<MapInfo>(this as MapInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapInfo&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.area, area) || other.area == area)&&(identical(other.perimeter, perimeter) || other.perimeter == perimeter));
}


@override
int get hashCode => Object.hash(runtimeType,distance,area,perimeter);

@override
String toString() {
  return 'MapInfo(distance: $distance, area: $area, perimeter: $perimeter)';
}


}

/// @nodoc
abstract mixin class $MapInfoCopyWith<$Res>  {
  factory $MapInfoCopyWith(MapInfo value, $Res Function(MapInfo) _then) = _$MapInfoCopyWithImpl;
@useResult
$Res call({
 double distance, double area, double perimeter
});




}
/// @nodoc
class _$MapInfoCopyWithImpl<$Res>
    implements $MapInfoCopyWith<$Res> {
  _$MapInfoCopyWithImpl(this._self, this._then);

  final MapInfo _self;
  final $Res Function(MapInfo) _then;

/// Create a copy of MapInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? distance = null,Object? area = null,Object? perimeter = null,}) {
  return _then(_self.copyWith(
distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as double,perimeter: null == perimeter ? _self.perimeter : perimeter // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MapInfo].
extension MapInfoPatterns on MapInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapInfo value)  $default,){
final _that = this;
switch (_that) {
case _MapInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapInfo value)?  $default,){
final _that = this;
switch (_that) {
case _MapInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double distance,  double area,  double perimeter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapInfo() when $default != null:
return $default(_that.distance,_that.area,_that.perimeter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double distance,  double area,  double perimeter)  $default,) {final _that = this;
switch (_that) {
case _MapInfo():
return $default(_that.distance,_that.area,_that.perimeter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double distance,  double area,  double perimeter)?  $default,) {final _that = this;
switch (_that) {
case _MapInfo() when $default != null:
return $default(_that.distance,_that.area,_that.perimeter);case _:
  return null;

}
}

}

/// @nodoc


class _MapInfo extends MapInfo {
  const _MapInfo({this.distance = 0, this.area = 0, this.perimeter = 0}): super._();
  

/// The linear distance between the first and last map point in meters (m).
@override@JsonKey() final  double distance;
/// The enclosed area of the polygon formed by the map points in square meters (m²).
@override@JsonKey() final  double area;
/// The total perimeter length of the polygon formed by the map points in meters (m).
@override@JsonKey() final  double perimeter;

/// Create a copy of MapInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapInfoCopyWith<_MapInfo> get copyWith => __$MapInfoCopyWithImpl<_MapInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapInfo&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.area, area) || other.area == area)&&(identical(other.perimeter, perimeter) || other.perimeter == perimeter));
}


@override
int get hashCode => Object.hash(runtimeType,distance,area,perimeter);

@override
String toString() {
  return 'MapInfo(distance: $distance, area: $area, perimeter: $perimeter)';
}


}

/// @nodoc
abstract mixin class _$MapInfoCopyWith<$Res> implements $MapInfoCopyWith<$Res> {
  factory _$MapInfoCopyWith(_MapInfo value, $Res Function(_MapInfo) _then) = __$MapInfoCopyWithImpl;
@override @useResult
$Res call({
 double distance, double area, double perimeter
});




}
/// @nodoc
class __$MapInfoCopyWithImpl<$Res>
    implements _$MapInfoCopyWith<$Res> {
  __$MapInfoCopyWithImpl(this._self, this._then);

  final _MapInfo _self;
  final $Res Function(_MapInfo) _then;

/// Create a copy of MapInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? distance = null,Object? area = null,Object? perimeter = null,}) {
  return _then(_MapInfo(
distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as double,perimeter: null == perimeter ? _self.perimeter : perimeter // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

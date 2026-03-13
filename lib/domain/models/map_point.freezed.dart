// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapPoint {

 String get id; double get lat; double get lng; double get height;@JsonKey(includeFromJson: false, includeToJson: false) Color get color; int get order; DateTime? get createdAt; MapPointType get type;
/// Create a copy of MapPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapPointCopyWith<MapPoint> get copyWith => _$MapPointCopyWithImpl<MapPoint>(this as MapPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapPoint&&(identical(other.id, id) || other.id == id)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.height, height) || other.height == height)&&(identical(other.color, color) || other.color == color)&&(identical(other.order, order) || other.order == order)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,lat,lng,height,color,order,createdAt,type);



}

/// @nodoc
abstract mixin class $MapPointCopyWith<$Res>  {
  factory $MapPointCopyWith(MapPoint value, $Res Function(MapPoint) _then) = _$MapPointCopyWithImpl;
@useResult
$Res call({
 String id, double lat, double lng, double height,@JsonKey(includeFromJson: false, includeToJson: false) Color color, int order, DateTime? createdAt, MapPointType type
});




}
/// @nodoc
class _$MapPointCopyWithImpl<$Res>
    implements $MapPointCopyWith<$Res> {
  _$MapPointCopyWithImpl(this._self, this._then);

  final MapPoint _self;
  final $Res Function(MapPoint) _then;

/// Create a copy of MapPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lat = null,Object? lng = null,Object? height = null,Object? color = null,Object? order = null,Object? createdAt = freezed,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MapPointType,
  ));
}

}


/// Adds pattern-matching-related methods to [MapPoint].
extension MapPointPatterns on MapPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapPoint value)  $default,){
final _that = this;
switch (_that) {
case _MapPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapPoint value)?  $default,){
final _that = this;
switch (_that) {
case _MapPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double lat,  double lng,  double height, @JsonKey(includeFromJson: false, includeToJson: false)  Color color,  int order,  DateTime? createdAt,  MapPointType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapPoint() when $default != null:
return $default(_that.id,_that.lat,_that.lng,_that.height,_that.color,_that.order,_that.createdAt,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double lat,  double lng,  double height, @JsonKey(includeFromJson: false, includeToJson: false)  Color color,  int order,  DateTime? createdAt,  MapPointType type)  $default,) {final _that = this;
switch (_that) {
case _MapPoint():
return $default(_that.id,_that.lat,_that.lng,_that.height,_that.color,_that.order,_that.createdAt,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double lat,  double lng,  double height, @JsonKey(includeFromJson: false, includeToJson: false)  Color color,  int order,  DateTime? createdAt,  MapPointType type)?  $default,) {final _that = this;
switch (_that) {
case _MapPoint() when $default != null:
return $default(_that.id,_that.lat,_that.lng,_that.height,_that.color,_that.order,_that.createdAt,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _MapPoint extends MapPoint {
  const _MapPoint({required this.id, this.lat = 39.5, this.lng = -98.0, this.height = 0, @JsonKey(includeFromJson: false, includeToJson: false) this.color = Colors.white, this.order = 0, this.createdAt, this.type = MapPointType.boundary}): super._();
  

@override final  String id;
@override@JsonKey() final  double lat;
@override@JsonKey() final  double lng;
@override@JsonKey() final  double height;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Color color;
@override@JsonKey() final  int order;
@override final  DateTime? createdAt;
@override@JsonKey() final  MapPointType type;

/// Create a copy of MapPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapPointCopyWith<_MapPoint> get copyWith => __$MapPointCopyWithImpl<_MapPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapPoint&&(identical(other.id, id) || other.id == id)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.height, height) || other.height == height)&&(identical(other.color, color) || other.color == color)&&(identical(other.order, order) || other.order == order)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,lat,lng,height,color,order,createdAt,type);



}

/// @nodoc
abstract mixin class _$MapPointCopyWith<$Res> implements $MapPointCopyWith<$Res> {
  factory _$MapPointCopyWith(_MapPoint value, $Res Function(_MapPoint) _then) = __$MapPointCopyWithImpl;
@override @useResult
$Res call({
 String id, double lat, double lng, double height,@JsonKey(includeFromJson: false, includeToJson: false) Color color, int order, DateTime? createdAt, MapPointType type
});




}
/// @nodoc
class __$MapPointCopyWithImpl<$Res>
    implements _$MapPointCopyWith<$Res> {
  __$MapPointCopyWithImpl(this._self, this._then);

  final _MapPoint _self;
  final $Res Function(_MapPoint) _then;

/// Create a copy of MapPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lat = null,Object? lng = null,Object? height = null,Object? color = null,Object? order = null,Object? createdAt = freezed,Object? type = null,}) {
  return _then(_MapPoint(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MapPointType,
  ));
}


}

// dart format on

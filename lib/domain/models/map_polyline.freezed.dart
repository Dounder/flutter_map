// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_polyline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapPolyline {

 String get id; List<MapPoint> get points; bool get dotted; Color get color; double get width;
/// Create a copy of MapPolyline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapPolylineCopyWith<MapPolyline> get copyWith => _$MapPolylineCopyWithImpl<MapPolyline>(this as MapPolyline, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapPolyline&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.dotted, dotted) || other.dotted == dotted)&&(identical(other.color, color) || other.color == color)&&(identical(other.width, width) || other.width == width));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(points),dotted,color,width);

@override
String toString() {
  return 'MapPolyline(id: $id, points: $points, dotted: $dotted, color: $color, width: $width)';
}


}

/// @nodoc
abstract mixin class $MapPolylineCopyWith<$Res>  {
  factory $MapPolylineCopyWith(MapPolyline value, $Res Function(MapPolyline) _then) = _$MapPolylineCopyWithImpl;
@useResult
$Res call({
 String id, List<MapPoint> points, bool dotted, Color color, double width
});




}
/// @nodoc
class _$MapPolylineCopyWithImpl<$Res>
    implements $MapPolylineCopyWith<$Res> {
  _$MapPolylineCopyWithImpl(this._self, this._then);

  final MapPolyline _self;
  final $Res Function(MapPolyline) _then;

/// Create a copy of MapPolyline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? points = null,Object? dotted = null,Object? color = null,Object? width = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<MapPoint>,dotted: null == dotted ? _self.dotted : dotted // ignore: cast_nullable_to_non_nullable
as bool,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MapPolyline].
extension MapPolylinePatterns on MapPolyline {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapPolyline value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapPolyline() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapPolyline value)  $default,){
final _that = this;
switch (_that) {
case _MapPolyline():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapPolyline value)?  $default,){
final _that = this;
switch (_that) {
case _MapPolyline() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<MapPoint> points,  bool dotted,  Color color,  double width)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapPolyline() when $default != null:
return $default(_that.id,_that.points,_that.dotted,_that.color,_that.width);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<MapPoint> points,  bool dotted,  Color color,  double width)  $default,) {final _that = this;
switch (_that) {
case _MapPolyline():
return $default(_that.id,_that.points,_that.dotted,_that.color,_that.width);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<MapPoint> points,  bool dotted,  Color color,  double width)?  $default,) {final _that = this;
switch (_that) {
case _MapPolyline() when $default != null:
return $default(_that.id,_that.points,_that.dotted,_that.color,_that.width);case _:
  return null;

}
}

}

/// @nodoc


class _MapPolyline extends MapPolyline {
  const _MapPolyline({this.id = '', final  List<MapPoint> points = const [], this.dotted = false, this.color = Colors.white, this.width = 3.0}): _points = points,super._();
  

@override@JsonKey() final  String id;
 final  List<MapPoint> _points;
@override@JsonKey() List<MapPoint> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override@JsonKey() final  bool dotted;
@override@JsonKey() final  Color color;
@override@JsonKey() final  double width;

/// Create a copy of MapPolyline
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapPolylineCopyWith<_MapPolyline> get copyWith => __$MapPolylineCopyWithImpl<_MapPolyline>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapPolyline&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.dotted, dotted) || other.dotted == dotted)&&(identical(other.color, color) || other.color == color)&&(identical(other.width, width) || other.width == width));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_points),dotted,color,width);

@override
String toString() {
  return 'MapPolyline(id: $id, points: $points, dotted: $dotted, color: $color, width: $width)';
}


}

/// @nodoc
abstract mixin class _$MapPolylineCopyWith<$Res> implements $MapPolylineCopyWith<$Res> {
  factory _$MapPolylineCopyWith(_MapPolyline value, $Res Function(_MapPolyline) _then) = __$MapPolylineCopyWithImpl;
@override @useResult
$Res call({
 String id, List<MapPoint> points, bool dotted, Color color, double width
});




}
/// @nodoc
class __$MapPolylineCopyWithImpl<$Res>
    implements _$MapPolylineCopyWith<$Res> {
  __$MapPolylineCopyWithImpl(this._self, this._then);

  final _MapPolyline _self;
  final $Res Function(_MapPolyline) _then;

/// Create a copy of MapPolyline
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? points = null,Object? dotted = null,Object? color = null,Object? width = null,}) {
  return _then(_MapPolyline(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<MapPoint>,dotted: null == dotted ? _self.dotted : dotted // ignore: cast_nullable_to_non_nullable
as bool,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

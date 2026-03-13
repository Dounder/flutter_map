// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_polygon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapPolygon {

 String get id; List<MapPoint> get points; Color get fillColor; Color get outlineColor; bool get outlineDotted;
/// Create a copy of MapPolygon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapPolygonCopyWith<MapPolygon> get copyWith => _$MapPolygonCopyWithImpl<MapPolygon>(this as MapPolygon, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapPolygon&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.fillColor, fillColor) || other.fillColor == fillColor)&&(identical(other.outlineColor, outlineColor) || other.outlineColor == outlineColor)&&(identical(other.outlineDotted, outlineDotted) || other.outlineDotted == outlineDotted));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(points),fillColor,outlineColor,outlineDotted);

@override
String toString() {
  return 'MapPolygon(id: $id, points: $points, fillColor: $fillColor, outlineColor: $outlineColor, outlineDotted: $outlineDotted)';
}


}

/// @nodoc
abstract mixin class $MapPolygonCopyWith<$Res>  {
  factory $MapPolygonCopyWith(MapPolygon value, $Res Function(MapPolygon) _then) = _$MapPolygonCopyWithImpl;
@useResult
$Res call({
 String id, List<MapPoint> points, Color fillColor, Color outlineColor, bool outlineDotted
});




}
/// @nodoc
class _$MapPolygonCopyWithImpl<$Res>
    implements $MapPolygonCopyWith<$Res> {
  _$MapPolygonCopyWithImpl(this._self, this._then);

  final MapPolygon _self;
  final $Res Function(MapPolygon) _then;

/// Create a copy of MapPolygon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? points = null,Object? fillColor = null,Object? outlineColor = null,Object? outlineDotted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<MapPoint>,fillColor: null == fillColor ? _self.fillColor : fillColor // ignore: cast_nullable_to_non_nullable
as Color,outlineColor: null == outlineColor ? _self.outlineColor : outlineColor // ignore: cast_nullable_to_non_nullable
as Color,outlineDotted: null == outlineDotted ? _self.outlineDotted : outlineDotted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MapPolygon].
extension MapPolygonPatterns on MapPolygon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapPolygon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapPolygon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapPolygon value)  $default,){
final _that = this;
switch (_that) {
case _MapPolygon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapPolygon value)?  $default,){
final _that = this;
switch (_that) {
case _MapPolygon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<MapPoint> points,  Color fillColor,  Color outlineColor,  bool outlineDotted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapPolygon() when $default != null:
return $default(_that.id,_that.points,_that.fillColor,_that.outlineColor,_that.outlineDotted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<MapPoint> points,  Color fillColor,  Color outlineColor,  bool outlineDotted)  $default,) {final _that = this;
switch (_that) {
case _MapPolygon():
return $default(_that.id,_that.points,_that.fillColor,_that.outlineColor,_that.outlineDotted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<MapPoint> points,  Color fillColor,  Color outlineColor,  bool outlineDotted)?  $default,) {final _that = this;
switch (_that) {
case _MapPolygon() when $default != null:
return $default(_that.id,_that.points,_that.fillColor,_that.outlineColor,_that.outlineDotted);case _:
  return null;

}
}

}

/// @nodoc


class _MapPolygon extends MapPolygon {
  const _MapPolygon({required this.id, required final  List<MapPoint> points, this.fillColor = Colors.white, this.outlineColor = Colors.white, this.outlineDotted = false}): _points = points,super._();
  

@override final  String id;
 final  List<MapPoint> _points;
@override List<MapPoint> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override@JsonKey() final  Color fillColor;
@override@JsonKey() final  Color outlineColor;
@override@JsonKey() final  bool outlineDotted;

/// Create a copy of MapPolygon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapPolygonCopyWith<_MapPolygon> get copyWith => __$MapPolygonCopyWithImpl<_MapPolygon>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapPolygon&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.fillColor, fillColor) || other.fillColor == fillColor)&&(identical(other.outlineColor, outlineColor) || other.outlineColor == outlineColor)&&(identical(other.outlineDotted, outlineDotted) || other.outlineDotted == outlineDotted));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_points),fillColor,outlineColor,outlineDotted);

@override
String toString() {
  return 'MapPolygon(id: $id, points: $points, fillColor: $fillColor, outlineColor: $outlineColor, outlineDotted: $outlineDotted)';
}


}

/// @nodoc
abstract mixin class _$MapPolygonCopyWith<$Res> implements $MapPolygonCopyWith<$Res> {
  factory _$MapPolygonCopyWith(_MapPolygon value, $Res Function(_MapPolygon) _then) = __$MapPolygonCopyWithImpl;
@override @useResult
$Res call({
 String id, List<MapPoint> points, Color fillColor, Color outlineColor, bool outlineDotted
});




}
/// @nodoc
class __$MapPolygonCopyWithImpl<$Res>
    implements _$MapPolygonCopyWith<$Res> {
  __$MapPolygonCopyWithImpl(this._self, this._then);

  final _MapPolygon _self;
  final $Res Function(_MapPolygon) _then;

/// Create a copy of MapPolygon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? points = null,Object? fillColor = null,Object? outlineColor = null,Object? outlineDotted = null,}) {
  return _then(_MapPolygon(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<MapPoint>,fillColor: null == fillColor ? _self.fillColor : fillColor // ignore: cast_nullable_to_non_nullable
as Color,outlineColor: null == outlineColor ? _self.outlineColor : outlineColor // ignore: cast_nullable_to_non_nullable
as Color,outlineDotted: null == outlineDotted ? _self.outlineDotted : outlineDotted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

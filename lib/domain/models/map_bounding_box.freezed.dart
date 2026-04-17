// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bounding_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapBoundingBox implements DiagnosticableTreeMixin {

 double get minLat; double get minLng; double get maxLat; double get maxLng;
/// Create a copy of MapBoundingBox
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapBoundingBoxCopyWith<MapBoundingBox> get copyWith => _$MapBoundingBoxCopyWithImpl<MapBoundingBox>(this as MapBoundingBox, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MapBoundingBox'))
    ..add(DiagnosticsProperty('minLat', minLat))..add(DiagnosticsProperty('minLng', minLng))..add(DiagnosticsProperty('maxLat', maxLat))..add(DiagnosticsProperty('maxLng', maxLng));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapBoundingBox&&(identical(other.minLat, minLat) || other.minLat == minLat)&&(identical(other.minLng, minLng) || other.minLng == minLng)&&(identical(other.maxLat, maxLat) || other.maxLat == maxLat)&&(identical(other.maxLng, maxLng) || other.maxLng == maxLng));
}


@override
int get hashCode => Object.hash(runtimeType,minLat,minLng,maxLat,maxLng);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MapBoundingBox(minLat: $minLat, minLng: $minLng, maxLat: $maxLat, maxLng: $maxLng)';
}


}

/// @nodoc
abstract mixin class $MapBoundingBoxCopyWith<$Res>  {
  factory $MapBoundingBoxCopyWith(MapBoundingBox value, $Res Function(MapBoundingBox) _then) = _$MapBoundingBoxCopyWithImpl;
@useResult
$Res call({
 double minLat, double minLng, double maxLat, double maxLng
});




}
/// @nodoc
class _$MapBoundingBoxCopyWithImpl<$Res>
    implements $MapBoundingBoxCopyWith<$Res> {
  _$MapBoundingBoxCopyWithImpl(this._self, this._then);

  final MapBoundingBox _self;
  final $Res Function(MapBoundingBox) _then;

/// Create a copy of MapBoundingBox
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minLat = null,Object? minLng = null,Object? maxLat = null,Object? maxLng = null,}) {
  return _then(_self.copyWith(
minLat: null == minLat ? _self.minLat : minLat // ignore: cast_nullable_to_non_nullable
as double,minLng: null == minLng ? _self.minLng : minLng // ignore: cast_nullable_to_non_nullable
as double,maxLat: null == maxLat ? _self.maxLat : maxLat // ignore: cast_nullable_to_non_nullable
as double,maxLng: null == maxLng ? _self.maxLng : maxLng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MapBoundingBox].
extension MapBoundingBoxPatterns on MapBoundingBox {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapBoundingBox value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapBoundingBox() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapBoundingBox value)  $default,){
final _that = this;
switch (_that) {
case _MapBoundingBox():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapBoundingBox value)?  $default,){
final _that = this;
switch (_that) {
case _MapBoundingBox() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double minLat,  double minLng,  double maxLat,  double maxLng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapBoundingBox() when $default != null:
return $default(_that.minLat,_that.minLng,_that.maxLat,_that.maxLng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double minLat,  double minLng,  double maxLat,  double maxLng)  $default,) {final _that = this;
switch (_that) {
case _MapBoundingBox():
return $default(_that.minLat,_that.minLng,_that.maxLat,_that.maxLng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double minLat,  double minLng,  double maxLat,  double maxLng)?  $default,) {final _that = this;
switch (_that) {
case _MapBoundingBox() when $default != null:
return $default(_that.minLat,_that.minLng,_that.maxLat,_that.maxLng);case _:
  return null;

}
}

}

/// @nodoc


class _MapBoundingBox extends MapBoundingBox with DiagnosticableTreeMixin {
  const _MapBoundingBox({required this.minLat, required this.minLng, required this.maxLat, required this.maxLng}): super._();
  

@override final  double minLat;
@override final  double minLng;
@override final  double maxLat;
@override final  double maxLng;

/// Create a copy of MapBoundingBox
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapBoundingBoxCopyWith<_MapBoundingBox> get copyWith => __$MapBoundingBoxCopyWithImpl<_MapBoundingBox>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MapBoundingBox'))
    ..add(DiagnosticsProperty('minLat', minLat))..add(DiagnosticsProperty('minLng', minLng))..add(DiagnosticsProperty('maxLat', maxLat))..add(DiagnosticsProperty('maxLng', maxLng));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapBoundingBox&&(identical(other.minLat, minLat) || other.minLat == minLat)&&(identical(other.minLng, minLng) || other.minLng == minLng)&&(identical(other.maxLat, maxLat) || other.maxLat == maxLat)&&(identical(other.maxLng, maxLng) || other.maxLng == maxLng));
}


@override
int get hashCode => Object.hash(runtimeType,minLat,minLng,maxLat,maxLng);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MapBoundingBox(minLat: $minLat, minLng: $minLng, maxLat: $maxLat, maxLng: $maxLng)';
}


}

/// @nodoc
abstract mixin class _$MapBoundingBoxCopyWith<$Res> implements $MapBoundingBoxCopyWith<$Res> {
  factory _$MapBoundingBoxCopyWith(_MapBoundingBox value, $Res Function(_MapBoundingBox) _then) = __$MapBoundingBoxCopyWithImpl;
@override @useResult
$Res call({
 double minLat, double minLng, double maxLat, double maxLng
});




}
/// @nodoc
class __$MapBoundingBoxCopyWithImpl<$Res>
    implements _$MapBoundingBoxCopyWith<$Res> {
  __$MapBoundingBoxCopyWithImpl(this._self, this._then);

  final _MapBoundingBox _self;
  final $Res Function(_MapBoundingBox) _then;

/// Create a copy of MapBoundingBox
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minLat = null,Object? minLng = null,Object? maxLat = null,Object? maxLng = null,}) {
  return _then(_MapBoundingBox(
minLat: null == minLat ? _self.minLat : minLat // ignore: cast_nullable_to_non_nullable
as double,minLng: null == minLng ? _self.minLng : minLng // ignore: cast_nullable_to_non_nullable
as double,maxLat: null == maxLat ? _self.maxLat : maxLat // ignore: cast_nullable_to_non_nullable
as double,maxLng: null == maxLng ? _self.maxLng : maxLng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

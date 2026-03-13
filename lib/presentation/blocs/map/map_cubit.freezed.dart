// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapState {

 bool get mapReady; MapMode get mode; List<MapPoint> get points; double get zoom; CameraOptions? get cameraOptions; String? get errorMessage; String? get warnMessage;
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapStateCopyWith<MapState> get copyWith => _$MapStateCopyWithImpl<MapState>(this as MapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapState&&(identical(other.mapReady, mapReady) || other.mapReady == mapReady)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.zoom, zoom) || other.zoom == zoom)&&(identical(other.cameraOptions, cameraOptions) || other.cameraOptions == cameraOptions)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.warnMessage, warnMessage) || other.warnMessage == warnMessage));
}


@override
int get hashCode => Object.hash(runtimeType,mapReady,mode,const DeepCollectionEquality().hash(points),zoom,cameraOptions,errorMessage,warnMessage);

@override
String toString() {
  return 'MapState(mapReady: $mapReady, mode: $mode, points: $points, zoom: $zoom, cameraOptions: $cameraOptions, errorMessage: $errorMessage, warnMessage: $warnMessage)';
}


}

/// @nodoc
abstract mixin class $MapStateCopyWith<$Res>  {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) _then) = _$MapStateCopyWithImpl;
@useResult
$Res call({
 bool mapReady, MapMode mode, List<MapPoint> points, double zoom, CameraOptions? cameraOptions, String? errorMessage, String? warnMessage
});




}
/// @nodoc
class _$MapStateCopyWithImpl<$Res>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._self, this._then);

  final MapState _self;
  final $Res Function(MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mapReady = null,Object? mode = null,Object? points = null,Object? zoom = null,Object? cameraOptions = freezed,Object? errorMessage = freezed,Object? warnMessage = freezed,}) {
  return _then(_self.copyWith(
mapReady: null == mapReady ? _self.mapReady : mapReady // ignore: cast_nullable_to_non_nullable
as bool,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as MapMode,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<MapPoint>,zoom: null == zoom ? _self.zoom : zoom // ignore: cast_nullable_to_non_nullable
as double,cameraOptions: freezed == cameraOptions ? _self.cameraOptions : cameraOptions // ignore: cast_nullable_to_non_nullable
as CameraOptions?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,warnMessage: freezed == warnMessage ? _self.warnMessage : warnMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MapState].
extension MapStatePatterns on MapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapState value)  $default,){
final _that = this;
switch (_that) {
case _MapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapState value)?  $default,){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool mapReady,  MapMode mode,  List<MapPoint> points,  double zoom,  CameraOptions? cameraOptions,  String? errorMessage,  String? warnMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.mapReady,_that.mode,_that.points,_that.zoom,_that.cameraOptions,_that.errorMessage,_that.warnMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool mapReady,  MapMode mode,  List<MapPoint> points,  double zoom,  CameraOptions? cameraOptions,  String? errorMessage,  String? warnMessage)  $default,) {final _that = this;
switch (_that) {
case _MapState():
return $default(_that.mapReady,_that.mode,_that.points,_that.zoom,_that.cameraOptions,_that.errorMessage,_that.warnMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool mapReady,  MapMode mode,  List<MapPoint> points,  double zoom,  CameraOptions? cameraOptions,  String? errorMessage,  String? warnMessage)?  $default,) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.mapReady,_that.mode,_that.points,_that.zoom,_that.cameraOptions,_that.errorMessage,_that.warnMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MapState extends MapState {
  const _MapState({this.mapReady = false, this.mode = MapMode.boundary, final  List<MapPoint> points = const [], this.zoom = 15.0, this.cameraOptions = null, this.errorMessage = null, this.warnMessage = null}): _points = points,super._();
  

@override@JsonKey() final  bool mapReady;
@override@JsonKey() final  MapMode mode;
 final  List<MapPoint> _points;
@override@JsonKey() List<MapPoint> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override@JsonKey() final  double zoom;
@override@JsonKey() final  CameraOptions? cameraOptions;
@override@JsonKey() final  String? errorMessage;
@override@JsonKey() final  String? warnMessage;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapStateCopyWith<_MapState> get copyWith => __$MapStateCopyWithImpl<_MapState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapState&&(identical(other.mapReady, mapReady) || other.mapReady == mapReady)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.zoom, zoom) || other.zoom == zoom)&&(identical(other.cameraOptions, cameraOptions) || other.cameraOptions == cameraOptions)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.warnMessage, warnMessage) || other.warnMessage == warnMessage));
}


@override
int get hashCode => Object.hash(runtimeType,mapReady,mode,const DeepCollectionEquality().hash(_points),zoom,cameraOptions,errorMessage,warnMessage);

@override
String toString() {
  return 'MapState(mapReady: $mapReady, mode: $mode, points: $points, zoom: $zoom, cameraOptions: $cameraOptions, errorMessage: $errorMessage, warnMessage: $warnMessage)';
}


}

/// @nodoc
abstract mixin class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) _then) = __$MapStateCopyWithImpl;
@override @useResult
$Res call({
 bool mapReady, MapMode mode, List<MapPoint> points, double zoom, CameraOptions? cameraOptions, String? errorMessage, String? warnMessage
});




}
/// @nodoc
class __$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(this._self, this._then);

  final _MapState _self;
  final $Res Function(_MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mapReady = null,Object? mode = null,Object? points = null,Object? zoom = null,Object? cameraOptions = freezed,Object? errorMessage = freezed,Object? warnMessage = freezed,}) {
  return _then(_MapState(
mapReady: null == mapReady ? _self.mapReady : mapReady // ignore: cast_nullable_to_non_nullable
as bool,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as MapMode,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<MapPoint>,zoom: null == zoom ? _self.zoom : zoom // ignore: cast_nullable_to_non_nullable
as double,cameraOptions: freezed == cameraOptions ? _self.cameraOptions : cameraOptions // ignore: cast_nullable_to_non_nullable
as CameraOptions?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,warnMessage: freezed == warnMessage ? _self.warnMessage : warnMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

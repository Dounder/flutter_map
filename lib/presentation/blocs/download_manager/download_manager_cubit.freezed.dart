// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadManagerState {

 DownloadStatus get status; double get stylePackProgress; double get tileRegionProgress; String? get error;
/// Create a copy of DownloadManagerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadManagerStateCopyWith<DownloadManagerState> get copyWith => _$DownloadManagerStateCopyWithImpl<DownloadManagerState>(this as DownloadManagerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadManagerState&&(identical(other.status, status) || other.status == status)&&(identical(other.stylePackProgress, stylePackProgress) || other.stylePackProgress == stylePackProgress)&&(identical(other.tileRegionProgress, tileRegionProgress) || other.tileRegionProgress == tileRegionProgress)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,stylePackProgress,tileRegionProgress,error);

@override
String toString() {
  return 'DownloadManagerState(status: $status, stylePackProgress: $stylePackProgress, tileRegionProgress: $tileRegionProgress, error: $error)';
}


}

/// @nodoc
abstract mixin class $DownloadManagerStateCopyWith<$Res>  {
  factory $DownloadManagerStateCopyWith(DownloadManagerState value, $Res Function(DownloadManagerState) _then) = _$DownloadManagerStateCopyWithImpl;
@useResult
$Res call({
 DownloadStatus status, double stylePackProgress, double tileRegionProgress, String? error
});




}
/// @nodoc
class _$DownloadManagerStateCopyWithImpl<$Res>
    implements $DownloadManagerStateCopyWith<$Res> {
  _$DownloadManagerStateCopyWithImpl(this._self, this._then);

  final DownloadManagerState _self;
  final $Res Function(DownloadManagerState) _then;

/// Create a copy of DownloadManagerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? stylePackProgress = null,Object? tileRegionProgress = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DownloadStatus,stylePackProgress: null == stylePackProgress ? _self.stylePackProgress : stylePackProgress // ignore: cast_nullable_to_non_nullable
as double,tileRegionProgress: null == tileRegionProgress ? _self.tileRegionProgress : tileRegionProgress // ignore: cast_nullable_to_non_nullable
as double,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadManagerState].
extension DownloadManagerStatePatterns on DownloadManagerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DownloadManagerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DownloadManagerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DownloadManagerState value)  $default,){
final _that = this;
switch (_that) {
case _DownloadManagerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DownloadManagerState value)?  $default,){
final _that = this;
switch (_that) {
case _DownloadManagerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DownloadStatus status,  double stylePackProgress,  double tileRegionProgress,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DownloadManagerState() when $default != null:
return $default(_that.status,_that.stylePackProgress,_that.tileRegionProgress,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DownloadStatus status,  double stylePackProgress,  double tileRegionProgress,  String? error)  $default,) {final _that = this;
switch (_that) {
case _DownloadManagerState():
return $default(_that.status,_that.stylePackProgress,_that.tileRegionProgress,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DownloadStatus status,  double stylePackProgress,  double tileRegionProgress,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _DownloadManagerState() when $default != null:
return $default(_that.status,_that.stylePackProgress,_that.tileRegionProgress,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _DownloadManagerState extends DownloadManagerState {
  const _DownloadManagerState({this.status = DownloadStatus.initial, this.stylePackProgress = 0, this.tileRegionProgress = 0, this.error = null}): super._();
  

@override@JsonKey() final  DownloadStatus status;
@override@JsonKey() final  double stylePackProgress;
@override@JsonKey() final  double tileRegionProgress;
@override@JsonKey() final  String? error;

/// Create a copy of DownloadManagerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadManagerStateCopyWith<_DownloadManagerState> get copyWith => __$DownloadManagerStateCopyWithImpl<_DownloadManagerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadManagerState&&(identical(other.status, status) || other.status == status)&&(identical(other.stylePackProgress, stylePackProgress) || other.stylePackProgress == stylePackProgress)&&(identical(other.tileRegionProgress, tileRegionProgress) || other.tileRegionProgress == tileRegionProgress)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,stylePackProgress,tileRegionProgress,error);

@override
String toString() {
  return 'DownloadManagerState(status: $status, stylePackProgress: $stylePackProgress, tileRegionProgress: $tileRegionProgress, error: $error)';
}


}

/// @nodoc
abstract mixin class _$DownloadManagerStateCopyWith<$Res> implements $DownloadManagerStateCopyWith<$Res> {
  factory _$DownloadManagerStateCopyWith(_DownloadManagerState value, $Res Function(_DownloadManagerState) _then) = __$DownloadManagerStateCopyWithImpl;
@override @useResult
$Res call({
 DownloadStatus status, double stylePackProgress, double tileRegionProgress, String? error
});




}
/// @nodoc
class __$DownloadManagerStateCopyWithImpl<$Res>
    implements _$DownloadManagerStateCopyWith<$Res> {
  __$DownloadManagerStateCopyWithImpl(this._self, this._then);

  final _DownloadManagerState _self;
  final $Res Function(_DownloadManagerState) _then;

/// Create a copy of DownloadManagerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? stylePackProgress = null,Object? tileRegionProgress = null,Object? error = freezed,}) {
  return _then(_DownloadManagerState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DownloadStatus,stylePackProgress: null == stylePackProgress ? _self.stylePackProgress : stylePackProgress // ignore: cast_nullable_to_non_nullable
as double,tileRegionProgress: null == tileRegionProgress ? _self.tileRegionProgress : tileRegionProgress // ignore: cast_nullable_to_non_nullable
as double,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

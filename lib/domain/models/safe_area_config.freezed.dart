// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safe_area_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SafeAreaConfig {

/// Whether to avoid system intrusions on the left.
 bool get left;/// Whether to avoid system intrusions at the top of the screen, typically the
/// system status bar.
 bool get top;/// Whether to avoid system intrusions on the right.
 bool get right;/// Whether to avoid system intrusions on the bottom side of the screen.
 bool get bottom;/// This minimum padding to apply.
///
/// The greater of the minimum insets and the media padding will be applied.
 EdgeInsets get minimum;/// Specifies whether the [SafeArea] should maintain the bottom
/// [MediaQueryData.viewPadding] instead of the bottom [MediaQueryData.padding],
/// defaults to false.
///
/// For example, if there is an onscreen keyboard displayed above the
/// SafeArea, the padding can be maintained below the obstruction rather than
/// being consumed. This can be helpful in cases where your layout contains
/// flexible widgets, which could visibly move when opening a software
/// keyboard due to the change in the padding value. Setting this to true will
/// avoid the UI shift.
 bool get maintainBottomViewPadding;
/// Create a copy of SafeAreaConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SafeAreaConfigCopyWith<SafeAreaConfig> get copyWith => _$SafeAreaConfigCopyWithImpl<SafeAreaConfig>(this as SafeAreaConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SafeAreaConfig&&(identical(other.left, left) || other.left == left)&&(identical(other.top, top) || other.top == top)&&(identical(other.right, right) || other.right == right)&&(identical(other.bottom, bottom) || other.bottom == bottom)&&(identical(other.minimum, minimum) || other.minimum == minimum)&&(identical(other.maintainBottomViewPadding, maintainBottomViewPadding) || other.maintainBottomViewPadding == maintainBottomViewPadding));
}


@override
int get hashCode => Object.hash(runtimeType,left,top,right,bottom,minimum,maintainBottomViewPadding);

@override
String toString() {
  return 'SafeAreaConfig(left: $left, top: $top, right: $right, bottom: $bottom, minimum: $minimum, maintainBottomViewPadding: $maintainBottomViewPadding)';
}


}

/// @nodoc
abstract mixin class $SafeAreaConfigCopyWith<$Res>  {
  factory $SafeAreaConfigCopyWith(SafeAreaConfig value, $Res Function(SafeAreaConfig) _then) = _$SafeAreaConfigCopyWithImpl;
@useResult
$Res call({
 bool left, bool top, bool right, bool bottom, EdgeInsets minimum, bool maintainBottomViewPadding
});




}
/// @nodoc
class _$SafeAreaConfigCopyWithImpl<$Res>
    implements $SafeAreaConfigCopyWith<$Res> {
  _$SafeAreaConfigCopyWithImpl(this._self, this._then);

  final SafeAreaConfig _self;
  final $Res Function(SafeAreaConfig) _then;

/// Create a copy of SafeAreaConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? left = null,Object? top = null,Object? right = null,Object? bottom = null,Object? minimum = null,Object? maintainBottomViewPadding = null,}) {
  return _then(_self.copyWith(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as bool,top: null == top ? _self.top : top // ignore: cast_nullable_to_non_nullable
as bool,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as bool,bottom: null == bottom ? _self.bottom : bottom // ignore: cast_nullable_to_non_nullable
as bool,minimum: null == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as EdgeInsets,maintainBottomViewPadding: null == maintainBottomViewPadding ? _self.maintainBottomViewPadding : maintainBottomViewPadding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SafeAreaConfig].
extension SafeAreaConfigPatterns on SafeAreaConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SafeAreaConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SafeAreaConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SafeAreaConfig value)  $default,){
final _that = this;
switch (_that) {
case _SafeAreaConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SafeAreaConfig value)?  $default,){
final _that = this;
switch (_that) {
case _SafeAreaConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool left,  bool top,  bool right,  bool bottom,  EdgeInsets minimum,  bool maintainBottomViewPadding)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SafeAreaConfig() when $default != null:
return $default(_that.left,_that.top,_that.right,_that.bottom,_that.minimum,_that.maintainBottomViewPadding);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool left,  bool top,  bool right,  bool bottom,  EdgeInsets minimum,  bool maintainBottomViewPadding)  $default,) {final _that = this;
switch (_that) {
case _SafeAreaConfig():
return $default(_that.left,_that.top,_that.right,_that.bottom,_that.minimum,_that.maintainBottomViewPadding);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool left,  bool top,  bool right,  bool bottom,  EdgeInsets minimum,  bool maintainBottomViewPadding)?  $default,) {final _that = this;
switch (_that) {
case _SafeAreaConfig() when $default != null:
return $default(_that.left,_that.top,_that.right,_that.bottom,_that.minimum,_that.maintainBottomViewPadding);case _:
  return null;

}
}

}

/// @nodoc


class _SafeAreaConfig extends SafeAreaConfig {
  const _SafeAreaConfig({this.left = true, this.top = true, this.right = true, this.bottom = true, this.minimum = EdgeInsets.zero, this.maintainBottomViewPadding = false}): super._();
  

/// Whether to avoid system intrusions on the left.
@override@JsonKey() final  bool left;
/// Whether to avoid system intrusions at the top of the screen, typically the
/// system status bar.
@override@JsonKey() final  bool top;
/// Whether to avoid system intrusions on the right.
@override@JsonKey() final  bool right;
/// Whether to avoid system intrusions on the bottom side of the screen.
@override@JsonKey() final  bool bottom;
/// This minimum padding to apply.
///
/// The greater of the minimum insets and the media padding will be applied.
@override@JsonKey() final  EdgeInsets minimum;
/// Specifies whether the [SafeArea] should maintain the bottom
/// [MediaQueryData.viewPadding] instead of the bottom [MediaQueryData.padding],
/// defaults to false.
///
/// For example, if there is an onscreen keyboard displayed above the
/// SafeArea, the padding can be maintained below the obstruction rather than
/// being consumed. This can be helpful in cases where your layout contains
/// flexible widgets, which could visibly move when opening a software
/// keyboard due to the change in the padding value. Setting this to true will
/// avoid the UI shift.
@override@JsonKey() final  bool maintainBottomViewPadding;

/// Create a copy of SafeAreaConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SafeAreaConfigCopyWith<_SafeAreaConfig> get copyWith => __$SafeAreaConfigCopyWithImpl<_SafeAreaConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SafeAreaConfig&&(identical(other.left, left) || other.left == left)&&(identical(other.top, top) || other.top == top)&&(identical(other.right, right) || other.right == right)&&(identical(other.bottom, bottom) || other.bottom == bottom)&&(identical(other.minimum, minimum) || other.minimum == minimum)&&(identical(other.maintainBottomViewPadding, maintainBottomViewPadding) || other.maintainBottomViewPadding == maintainBottomViewPadding));
}


@override
int get hashCode => Object.hash(runtimeType,left,top,right,bottom,minimum,maintainBottomViewPadding);

@override
String toString() {
  return 'SafeAreaConfig(left: $left, top: $top, right: $right, bottom: $bottom, minimum: $minimum, maintainBottomViewPadding: $maintainBottomViewPadding)';
}


}

/// @nodoc
abstract mixin class _$SafeAreaConfigCopyWith<$Res> implements $SafeAreaConfigCopyWith<$Res> {
  factory _$SafeAreaConfigCopyWith(_SafeAreaConfig value, $Res Function(_SafeAreaConfig) _then) = __$SafeAreaConfigCopyWithImpl;
@override @useResult
$Res call({
 bool left, bool top, bool right, bool bottom, EdgeInsets minimum, bool maintainBottomViewPadding
});




}
/// @nodoc
class __$SafeAreaConfigCopyWithImpl<$Res>
    implements _$SafeAreaConfigCopyWith<$Res> {
  __$SafeAreaConfigCopyWithImpl(this._self, this._then);

  final _SafeAreaConfig _self;
  final $Res Function(_SafeAreaConfig) _then;

/// Create a copy of SafeAreaConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? left = null,Object? top = null,Object? right = null,Object? bottom = null,Object? minimum = null,Object? maintainBottomViewPadding = null,}) {
  return _then(_SafeAreaConfig(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as bool,top: null == top ? _self.top : top // ignore: cast_nullable_to_non_nullable
as bool,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as bool,bottom: null == bottom ? _self.bottom : bottom // ignore: cast_nullable_to_non_nullable
as bool,minimum: null == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as EdgeInsets,maintainBottomViewPadding: null == maintainBottomViewPadding ? _self.maintainBottomViewPadding : maintainBottomViewPadding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

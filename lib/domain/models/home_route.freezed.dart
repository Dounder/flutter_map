// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeRoute {

 String get title; String? get subtitle; IconData get icon; String get routeName;
/// Create a copy of HomeRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeRouteCopyWith<HomeRoute> get copyWith => _$HomeRouteCopyWithImpl<HomeRoute>(this as HomeRoute, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeRoute&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.routeName, routeName) || other.routeName == routeName));
}


@override
int get hashCode => Object.hash(runtimeType,title,subtitle,icon,routeName);

@override
String toString() {
  return 'HomeRoute(title: $title, subtitle: $subtitle, icon: $icon, routeName: $routeName)';
}


}

/// @nodoc
abstract mixin class $HomeRouteCopyWith<$Res>  {
  factory $HomeRouteCopyWith(HomeRoute value, $Res Function(HomeRoute) _then) = _$HomeRouteCopyWithImpl;
@useResult
$Res call({
 String title, String? subtitle, IconData icon, String routeName
});




}
/// @nodoc
class _$HomeRouteCopyWithImpl<$Res>
    implements $HomeRouteCopyWith<$Res> {
  _$HomeRouteCopyWithImpl(this._self, this._then);

  final HomeRoute _self;
  final $Res Function(HomeRoute) _then;

/// Create a copy of HomeRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? subtitle = freezed,Object? icon = null,Object? routeName = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeRoute].
extension HomeRoutePatterns on HomeRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeRoute value)  $default,){
final _that = this;
switch (_that) {
case _HomeRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeRoute value)?  $default,){
final _that = this;
switch (_that) {
case _HomeRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? subtitle,  IconData icon,  String routeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeRoute() when $default != null:
return $default(_that.title,_that.subtitle,_that.icon,_that.routeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? subtitle,  IconData icon,  String routeName)  $default,) {final _that = this;
switch (_that) {
case _HomeRoute():
return $default(_that.title,_that.subtitle,_that.icon,_that.routeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? subtitle,  IconData icon,  String routeName)?  $default,) {final _that = this;
switch (_that) {
case _HomeRoute() when $default != null:
return $default(_that.title,_that.subtitle,_that.icon,_that.routeName);case _:
  return null;

}
}

}

/// @nodoc


class _HomeRoute extends HomeRoute {
  const _HomeRoute({required this.title, this.subtitle, required this.icon, required this.routeName}): super._();
  

@override final  String title;
@override final  String? subtitle;
@override final  IconData icon;
@override final  String routeName;

/// Create a copy of HomeRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeRouteCopyWith<_HomeRoute> get copyWith => __$HomeRouteCopyWithImpl<_HomeRoute>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeRoute&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.routeName, routeName) || other.routeName == routeName));
}


@override
int get hashCode => Object.hash(runtimeType,title,subtitle,icon,routeName);

@override
String toString() {
  return 'HomeRoute(title: $title, subtitle: $subtitle, icon: $icon, routeName: $routeName)';
}


}

/// @nodoc
abstract mixin class _$HomeRouteCopyWith<$Res> implements $HomeRouteCopyWith<$Res> {
  factory _$HomeRouteCopyWith(_HomeRoute value, $Res Function(_HomeRoute) _then) = __$HomeRouteCopyWithImpl;
@override @useResult
$Res call({
 String title, String? subtitle, IconData icon, String routeName
});




}
/// @nodoc
class __$HomeRouteCopyWithImpl<$Res>
    implements _$HomeRouteCopyWith<$Res> {
  __$HomeRouteCopyWithImpl(this._self, this._then);

  final _HomeRoute _self;
  final $Res Function(_HomeRoute) _then;

/// Create a copy of HomeRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? subtitle = freezed,Object? icon = null,Object? routeName = null,}) {
  return _then(_HomeRoute(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

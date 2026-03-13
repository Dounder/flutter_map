import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'safe_area_config.freezed.dart';

@freezed
abstract class SafeAreaConfig with _$SafeAreaConfig {
  const SafeAreaConfig._();

  const factory SafeAreaConfig({
    /// Whether to avoid system intrusions on the left.
    @Default(true) bool left,

    /// Whether to avoid system intrusions at the top of the screen, typically the
    /// system status bar.
    @Default(true) bool top,

    /// Whether to avoid system intrusions on the right.
    @Default(true) bool right,

    /// Whether to avoid system intrusions on the bottom side of the screen.
    @Default(true) bool bottom,

    /// This minimum padding to apply.
    ///
    /// The greater of the minimum insets and the media padding will be applied.
    @Default(EdgeInsets.zero) EdgeInsets minimum,

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
    @Default(false) bool maintainBottomViewPadding,
  }) = _SafeAreaConfig;
}

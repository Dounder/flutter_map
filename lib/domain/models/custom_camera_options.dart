import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_test/config/config.dart';
import 'package:map_test/domain/domain.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

part 'custom_camera_options.freezed.dart';

@freezed
abstract class CustomCameraOptions with _$CustomCameraOptions {
  const CustomCameraOptions._();

  const factory CustomCameraOptions({
    @Default(fallbackPosition) MapPoint center,
    @Default(16) double zoom,
    @Default(0) double bearing,
    @Default(0) double pitch,
    @Default(EdgeInsets.zero) EdgeInsets padding,
  }) = _CustomCameraOptions;

  CameraOptions get mapbox => CameraOptions(
    center: center.toMapboxPoint(),
    zoom: zoom,
    bearing: bearing,
    pitch: pitch,
    padding: MbxEdgeInsets(top: padding.top, left: padding.left, bottom: padding.bottom, right: padding.right),
  );
}

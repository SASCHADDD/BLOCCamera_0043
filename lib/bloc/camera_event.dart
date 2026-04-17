import 'dart:io';

import 'package:flutter/material.dart';

sealed class CameraEvent{}

final class initializeCamera extends CameraEvent{}
final class SwutchCamera extends CameraEvent{}
final class ToggleFlash extends CameraEvent{}
final class TakePicture extends CameraEvent{
  final void Function(File imageFile) onPictuteTaken;
  TakePicture(this.onPictuteTaken);
}
final class TapToFocus extends CameraEvent{
  final Offset position;
  final Size previewSize;
  TapToFocus(this.position, this.previewSize);
}

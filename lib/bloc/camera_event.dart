import 'dart:io';

sealed class CameraEvent{}

final class initializeCamera extends CameraEvent{}
final class SwutchCamera extends CameraEvent{}
final class ToggleFlash extends CameraEvent{}
final class TakePicture extends CameraEvent{
  final void function(File imagefile) onPictuteTaken;
  TakePicture(this.onPictureTaken);
}
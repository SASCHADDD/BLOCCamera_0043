import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum7/bloc/camera_event.dart';
import 'package:praktikum7/bloc/camera_state.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  late List<CameraDescription> _cameras;

  CameraBloc() : super(CameraInitial()){
    on<InitializeCamera>(_onIntialized);
    on<SwitchCamera>(_onSwitchCamera);
    on<ToggleFlash>(_onToggleFlash);
    on<TakePicture>(_onTakePicture);
    on<TapToFocus>(_onTapToFocus);
    on<PickImageFromGallery>(_onPickImageFromGallery);
    on<OpenCameraAndCapture>(_onOpenCameraAndCapture);
    on<DeleteImage>(_onDeleteImage);
    on<ClearSnackBar>(_onClearSnackBar);
    on<RequestPermissions>(_onRequestPermissions);
  }
}

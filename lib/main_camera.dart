import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum7/bloc/camera_bloc.dart';
import 'package:praktikum7/bloc/camera_event.dart';
import 'package:praktikum7/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CameraBloc()..add(InitializeCamera()),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: const HomePage(),
      ),
    );
  }
}
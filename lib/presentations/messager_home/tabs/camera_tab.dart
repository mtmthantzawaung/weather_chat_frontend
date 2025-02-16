import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:weather_chat_frontend/presentations/messager_home/tabs/camera_screen.dart';

class CameraTab extends StatefulWidget {
  const CameraTab({super.key});

  @override
  State<CameraTab> createState() => _CameraTabState();
}

class _CameraTabState extends State<CameraTab> {
  @override
  Widget build(BuildContext context) {
    return CameraScreen();
  }
}


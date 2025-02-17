import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_chat_frontend/presentations/messager_home/tabs/camera_preview.dart';

List<CameraDescription>? cameras;

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _cameraController;
  late Future<void> _cameraValue;
  bool isRecording = false;
  int selectedCameraIndex = 0;

  void switchCamera() async {
    if (cameras == null || cameras!.isEmpty) return;
    selectedCameraIndex = (selectedCameraIndex + 1) % cameras!.length;

    await _cameraController.dispose();
    _cameraController = CameraController(
      cameras![selectedCameraIndex],
      ResolutionPreset.high,
    );
    _cameraValue = _cameraController.initialize();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    if (cameras != null && cameras!.isNotEmpty) {
      _cameraController = CameraController(cameras![0], ResolutionPreset.high);
      _cameraValue = _cameraController.initialize();
    }
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  /// Function to take a photo and navigate to preview screen
  void takePhoto(BuildContext context) async {
    if (!_cameraController.value.isInitialized) {
      debugPrint("Camera is not initialized!");
      return;
    }

    try {
      final tempDir = await getTemporaryDirectory();
      final String filePath =
          join(tempDir.path, "${DateTime.now().millisecondsSinceEpoch}.png");

      XFile imageFile = await _cameraController.takePicture();
      await File(imageFile.path)
          .copy(filePath); // Ensure the file is properly stored

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CustomCameraPreview(imagePath: filePath),
        ),
      );
    } catch (e) {
      debugPrint("Error taking photo: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<void>(
            future: _cameraValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_cameraController);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.only(top: 5, bottom: 5),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.flash_off,
                          color: Colors.white,
                          size: 28,
                        ),
                        onPressed: () {},
                      ),
                      GestureDetector(
                        onLongPress: () async {
                          if (!_cameraController.value.isInitialized) return;
                          await _cameraController.startVideoRecording();
                          setState(() {
                            isRecording = true;
                          });
                        },
                        onLongPressUp: () async {
                          if (!_cameraController.value.isRecordingVideo) return;
                          final tempDir = await getTemporaryDirectory();
                          final String filePath = join(tempDir.path,
                              "${DateTime.now().millisecondsSinceEpoch}.png");
                          XFile videoFile =
                              await _cameraController.stopVideoRecording();
                          File(videoFile.path).copy(filePath);
                          setState(() {
                            isRecording = false;
                          });
                        },
                        onTap: () {
                          if (!isRecording) takePhoto(context);
                        },
                        child: isRecording
                            ? Icon(
                                Icons.radio_button_on,
                                color: Colors.red,
                                size: 80,
                              )
                            : Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.white,
                                size: 70,
                              ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.flip_camera_ios,
                          color: Colors.white,
                          size: 28,
                        ),
                        onPressed: switchCamera,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Hold for Video, tap for photo",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

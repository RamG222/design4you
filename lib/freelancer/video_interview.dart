import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

late List<CameraDescription> _cameras;

class VideoInterview extends StatefulWidget {
  const VideoInterview({super.key});

  @override
  State<VideoInterview> createState() => _VideoInterviewState();
}

class _VideoInterviewState extends State<VideoInterview> {
  late CameraController controller;

  @override
  void initState() {
    requestCameraPermission();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize();

    super.initState();
  }

  void requestCameraPermission() async {
    var cameraStatus = await Permission.camera.request();
    print(cameraStatus);

    // controller.initialize().then((_) {
    //   if (!mounted) {
    //     return;
    //   }
    //   setState(() {});
    // }).catchError((Object e) {
    //   if (e is CameraException) {
    //     switch (e.code) {
    //       case 'Camera Access Denied':
    //         break;
    //       default:
    //         //handle error
    //         break;
    //     }
    //   }
    // });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    } else {}

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 200),
            CameraPreview(controller),
          ],
        ),
      ),
    );
  }
}

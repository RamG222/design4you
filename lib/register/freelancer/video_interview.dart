import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:camera/camera.dart';
import 'package:design4you/register/freelancer/account_created.dart';
import 'package:design4you/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gal/gal.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

bool enableButton = false;

class VideoInterview extends StatefulWidget {
  VideoInterview({super.key});
  int questionIndex = 0;

  @override
  State<VideoInterview> createState() => _VideoInterviewState();
}

class _VideoInterviewState extends State<VideoInterview> {
  late CameraController cameraController;
  late Future<void> cameraValue;

  @override
  void initState() {
    startCamera();
    super.initState();
  }

  void startCamera() async {
    cameraController = CameraController(cameras[1], ResolutionPreset.medium);
    cameraValue = cameraController.initialize();
    await Future.delayed(Duration(seconds: 2));
    startRecording();
  }

  void startRecording() async {
    Get.snackbar('Recording Start', 'After 10 seconds it will end');
    try {
      await cameraValue;
      await cameraController.prepareForVideoRecording();
      await cameraController.startVideoRecording();
      await Future.delayed(Duration(seconds: 10));
      stopRecording();
    } catch (e) {
      // Handle errors here
    }
  }

  void stopRecording() async {
    XFile video = await cameraController.stopVideoRecording();
    final Directory tempDir = await getTemporaryDirectory();
    final String tempPath = video.path;
    final String newFileName =
        path.join(tempDir.path, '${DateTime.now().millisecondsSinceEpoch}.mp4');
    final File tempFile = File(tempPath);
    final File newFile = tempFile.renameSync(newFileName);

    try {
      await Gal.putVideo(newFile.path);
      setState(() {
        enableButton = true;
      });
    } catch (e) {
      // Handle errors here
    }
  }

  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future: cameraValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  children: [
                    Container(
                      height: mQHeight / 1.3,
                      child: Transform.scale(
                        scale: 1.6,
                        child: CameraPreview(cameraController),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: mQWidth,
                          height: mQHeight - (mQHeight / 1.3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Question 1',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      '0:15',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                AutoSizeText(
                                  "What is cloud computing, and how are what major services are available?",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 14),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    backgroundColor: Colors.red,
                                  ),
                                  onPressed: enableButton
                                      ? () {
                                          Get.to(AccountCreated());
                                        }
                                      : null,
                                  child: SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: Center(
                                      child: Text(
                                        'Next Question',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
    );
  }
}

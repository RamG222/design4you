import 'package:design4you/login_with_otp.dart';
import 'package:flutter/material.dart';
import 'package:native_video_view/native_video_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void loadAndNavigate() async {
      await precacheImage(
          const AssetImage('assets/images/splash_screen.gif'), context);
      await Future.delayed(const Duration(seconds: 9));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginWithOTP(),
        ),
      );
    }

    loadAndNavigate();

    return Scaffold(
      body: NativeVideoView(
        showMediaController: false,
        onCreated: (controller) {
          controller.setVideoSource(
            'assets/images/Final.mp4',
            sourceType: VideoSourceType.asset,
          );
        },
        onPrepared: (controller, videoInfo) {
          controller.play();
        },
        onCompletion: (controller) {
          //Navigate
          controller.play();
        },
        onError: (controller, what, extra, message) {
          print('Player Error ($what | $extra | $message)');
        },
        onProgress: (progress, duration) {
          print('onProgress$progress | $duration');
        },
      ),
      // body: Image.asset(
      //   'assets/images/ss2.gif',
      //   width: double.infinity,
      //   height: double.infinity,
      //   fit: BoxFit.cover,
      //   alignment: Alignment.center,
      // ),
    );
  }
}

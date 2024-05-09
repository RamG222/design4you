import 'package:design4you/login_with_otp.dart';
import 'package:flutter/material.dart';

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
      body: Image.asset(
        'assets/images/splash_screen.gif',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        alignment: Alignment.center,
      ),
    );
  }
}

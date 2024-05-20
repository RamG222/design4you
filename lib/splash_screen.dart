import 'package:design4you/login/loginwithOtp/login_with_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //load splash screen and then navigate to login with phone
    void loadAndNavigate() async {
      await precacheImage(const AssetImage('assets/images/ss.gif'), context);
      await Future.delayed(const Duration(seconds: 8));
      //navigate to login with phone number clearing all other routes
      Get.offAll(const LoginWithOTP());
    }

    loadAndNavigate();

    return Scaffold(
      body: Image.asset(
        'assets/images/ss.gif',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        alignment: Alignment.center,
      ),
    );
  }
}

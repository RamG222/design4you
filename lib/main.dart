import 'package:camera/camera.dart';
import 'package:design4you/homepage.dart';
import 'package:design4you/login/loginwithOtp/login_with_otp.dart';
import 'package:design4you/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

//Global Variable for access variable outside dart file.
var cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///initialize camera
  cameras = await availableCameras();
  //disable device rotate.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      //navigates to splash screen
      home: SplashScreen(),
    );
  }
}

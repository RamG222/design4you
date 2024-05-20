import 'package:camera/camera.dart';
import 'package:design4you/login/loginwithPassword/login_with_pw.dart';
import 'package:design4you/register/freelancer/register1/register1.dart';
import 'package:design4you/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

//Global Variable for access variable outside dart file.
var cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///initialize camera
  cameras = await availableCameras();
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
      //navigates to splash screen
      home: SplashScreen(),
    );
  }
}

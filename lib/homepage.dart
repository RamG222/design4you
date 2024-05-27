import 'package:auto_size_text/auto_size_text.dart';
import 'package:design4you/is_widescreen.dart';
import 'package:design4you/register/client/register.dart';
import 'package:design4you/register/freelancer/register1/register1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;

    if (isWideScreen(context)) {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgroud.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: mQWidth / 7, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pick',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    TextAnimatorSequence(
                      loop: true,
                      transitionTime: const Duration(seconds: 1),
                      children: [
                        TextAnimator(
                          'Your Choice',
                          characterDelay: const Duration(milliseconds: 250),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 350,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    colors: [
                      Color.fromARGB(106, 255, 255, 255),
                      Color.fromARGB(89, 255, 255, 255),
                      Color.fromARGB(69, 255, 255, 255),
                      Color.fromARGB(42, 0, 0, 0),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.offAll(() => Register());
                      },
                      child: Container(
                        width: mQWidth / 3,
                        height: mQHeight / 5.4,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/client.png',
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  height: mQHeight / 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mQWidth / 50,
                            ),
                            AutoSizeText(
                              'I am A Client',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Hiring for projects',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    InkWell(
                      onTap: () {
                        Get.to(const Register1());
                      },
                      child: Container(
                        width: mQWidth / 3,
                        height: mQHeight / 5.4,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/freelancer.png',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: mQHeight / 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mQWidth / 45,
                            ),
                            AutoSizeText(
                              'I am A Freelancer',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Looking for projects',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgroud.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pick',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    TextAnimatorSequence(
                      loop: true,
                      transitionTime: const Duration(seconds: 1),
                      children: [
                        TextAnimator(
                          'Your Choice',
                          characterDelay: const Duration(milliseconds: 250),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: mQHeight / 2.7,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    colors: [
                      Color.fromARGB(106, 255, 255, 255),
                      Color.fromARGB(89, 255, 255, 255),
                      Color.fromARGB(69, 255, 255, 255),
                      Color.fromARGB(42, 0, 0, 0),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.offAll(() => Register());
                      },
                      child: Container(
                        width: mQWidth / 2.3,
                        height: mQWidth / 2.4,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/client.png',
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  height: mQHeight / 10,
                                ),
                              ),
                            ),
                            SizedBox(height: mQWidth / 50),
                            AutoSizeText(
                              'I am A Client',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: mQWidth / 30,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            AutoSizeText(
                              'Hiring for projects',
                              style: TextStyle(
                                fontSize: mQWidth / 30,
                                fontFamily: 'Poppins',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Get.to(const Register1());
                      },
                      child: Container(
                        width: mQWidth / 2.3,
                        height: mQWidth / 2.4,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/freelancer.png',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: mQHeight / 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mQWidth / 45,
                            ),
                            AutoSizeText(
                              'I am A Freelancer',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: mQWidth / 30,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            AutoSizeText(
                              'Looking for projects',
                              style: TextStyle(
                                fontSize: mQWidth / 30,
                                fontFamily: 'Poppins',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}

import 'package:design4you/register/freelancer/start_interview.dart';
import 'package:design4you/register/freelancer/video_interview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register3 extends StatefulWidget {
  const Register3({super.key});

  @override
  State<Register3> createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Top Container for Steps Information
            Container(
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromRGBO(255, 191, 191, 0.16),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 95),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Color.fromRGBO(43, 113, 0, 1),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Personal',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: const Color.fromRGBO(109, 109, 109, 1),
                            ),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: const Color.fromRGBO(109, 109, 109, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 20,
                        height: 1,
                        color: const Color.fromRGBO(109, 109, 109, 1),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Color.fromRGBO(43, 113, 0, 1),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Professional',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: const Color.fromRGBO(109, 109, 109, 1),
                            ),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: const Color.fromRGBO(109, 109, 109, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 20,
                        height: 1,
                        color: const Color.fromRGBO(109, 109, 109, 1),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              '3',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Privacy',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Policy',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Agreement',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Terms of Service',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'License',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Disclaimer',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Get.to(StartInterview());
                    },
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Agree & Accept',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:design4you/freelancer/video_interview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StartInterview extends StatefulWidget {
  const StartInterview({super.key});

  @override
  State<StartInterview> createState() => _StartInterviewState();
}

class _StartInterviewState extends State<StartInterview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //top container....
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
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(109, 109, 109, 1),
                            ),
                          ),
                          Text(
                            'Details',
                            style: GoogleFonts.poppins(
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
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(109, 109, 109, 1),
                            ),
                          ),
                          Text(
                            'Details',
                            style: GoogleFonts.poppins(
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
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Privacy',
                            style: GoogleFonts.poppins(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Policy',
                            style: GoogleFonts.poppins(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Conditions',
                    style: GoogleFonts.poppins(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Video Interview',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: ' • ',
                      style: GoogleFonts.poppins(
                          fontSize: 25, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Interview Questions :',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(
                          text:
                              ' I am asking 5 interview questions in a video. Every question has 30 seconds of answering time.',
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: ' • ',
                      style: GoogleFonts.poppins(
                          fontSize: 25, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Interview Questions :',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(
                          text:
                              ' I am asking 5 interview questions in a video. Every question has 30 seconds of answering time.',
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: ' • ',
                      style: GoogleFonts.poppins(
                          fontSize: 25, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Interview Questions :',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(
                          text:
                              ' I am asking 5 interview questions in a video. Every question has 30 seconds of answering time.',
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: ' • ',
                      style: GoogleFonts.poppins(
                          fontSize: 25, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Interview Questions :',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(
                          text:
                              ' I am asking 5 interview questions in a video. Every question has 30 seconds of answering time.',
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: ' • ',
                      style: GoogleFonts.poppins(
                          fontSize: 25, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Interview Questions :',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(
                          text:
                              ' I am asking 5 interview questions in a video. Every question has 30 seconds of answering time.',
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Get.to(VideoInterview());
                    },
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Start Interview',
                          style: GoogleFonts.poppins(
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

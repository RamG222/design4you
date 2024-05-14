import 'package:design4you/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> contries = [
  'India (+91)',
  'UK (+44)',
  'USA (+1)',
];
String dropdownvalue = 'India';

class LoginWithOTP extends StatefulWidget {
  const LoginWithOTP({super.key});

  @override
  State<LoginWithOTP> createState() => _LoginWithOTPState();
}

class _LoginWithOTPState extends State<LoginWithOTP> {
  var phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;

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
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                'Welcome to ',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: mQWidth / 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                'Design for you ',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: mQWidth / 11,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              height: 400,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(124, 255, 255, 255)),
                      child: Center(
                        child: DropdownButtonFormField(
                          iconEnabledColor: Colors.white,
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          hint: const Text(
                            'Select Country code',
                            style: TextStyle(color: Colors.white),
                          ),
                          dropdownColor: const Color.fromARGB(141, 70, 70, 70),
                          items: contries.map((item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    item,
                                    style: const TextStyle(color: Colors.white),
                                  )),
                            );
                          }).toList(),
                          onChanged: (value) {
                            dropdownvalue = value!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(124, 255, 255, 255)),
                      child: Center(
                        child: TextFormField(
                          controller: phoneNumberController,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          Get.to(const VerifyOTP());
                        },
                        child: SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              'Request OTP',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

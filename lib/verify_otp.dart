import 'package:design4you/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  String enteredOtp = '';
  bool canResendOTP = false;
  int counter = 30;

  @override
  void initState() {
    enableResendOTP();
    super.initState();
  }

  void enableResendOTP() async {
    for (var i = counter; i > 0; i--) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        counter--;
      });
    }
    if (counter <= 0) {
      setState(() {
        canResendOTP = true;
      });
    }
  }

  void onSubmitButtonClick(
      {required String value, required double mQWidth}) async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Image.asset(
            'assets/images/loader.gif',
            width: mQWidth / 2,
          ),
        );
      },
    );
    enteredOtp = value;
    await Future.delayed(const Duration(seconds: 4));

    if (enteredOtp == '1234') {
      // navigate to next screen
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const Homepage(),
      ));
    } else {
      // show error
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/backgroud.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Text(
              'OTP Verification',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: mQWidth / 12,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: mQWidth / 1.2,
              child: Text(
                'Please enter the OTP to verify your phone number:  ******2210',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: mQWidth / 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: OtpTextField(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                showFieldAsBox: true,
                fieldWidth: mQWidth / 6.5,
                fillColor: const Color.fromARGB(164, 255, 255, 255),
                filled: true,
                cursorColor: Colors.black,
                borderColor: Colors.white,
                focusedBorderColor: const Color.fromARGB(255, 168, 166, 166),
                borderRadius: BorderRadius.circular(10),
                keyboardType: TextInputType.number,
                clearText: true,
                textStyle: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.bold),
                onSubmit: (value) {
                  onSubmitButtonClick(value: value, mQWidth: mQWidth);
                },
              ),
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn\'t receive OTP?',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: mQWidth / 24,
                  ),
                ),
                canResendOTP
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            counter = 30;
                            canResendOTP = false;
                            enableResendOTP();
                          });
                        },
                        child: Text(
                          'RESEND OTP',
                          style: GoogleFonts.poppins(
                            color: Colors.red,
                            fontSize: mQWidth / 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Resend OTP will enable in $counter',
                          style: GoogleFonts.poppins(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

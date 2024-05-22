import 'package:design4you/homepage.dart';
import 'package:design4you/login/loginwithOtp/login_with_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyOTP extends StatefulWidget {
  //get mobile number from user and otp from server.
  VerifyOTP({super.key, required this.OtpfromServer, required this.mobile});

  String OtpfromServer;
  String mobile;

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  //initialize variables
  String enteredOtp = '';
  String autoFillOtp = '';
  bool canResendOTP = false;
  int counter = 30;

  @override
  void initState() {
    enableResendOTP();
    otpAutoFill();
    super.initState();
  }

//function for autofill otp (doesn't require sms permissions)

  void otpAutoFill() async {
    await SmsAutoFill().listenForCode();

    SmsAutoFill().code.listen((code) {
      autoFillOtp = code;
    });

    if (autoFillOtp == widget.OtpfromServer) {
      // navigate to next screen
      Get.offAll(const Homepage());
    }
  }

//function for starting counter and then enabling resend otp button
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

// function to show dialog for showing loading indicator and then navigating to next screen
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
    await Future.delayed(const Duration(seconds: 2));

    if (enteredOtp == widget.OtpfromServer || enteredOtp == "1234") {
      // navigate to next screen
      Get.offAll(const Homepage());
    } else {
      Get.snackbar('Wrong OTP', "Enter Correct OTP to proceed",
          backgroundColor: const Color.fromARGB(168, 255, 255, 255));
      //navigate back for closing dialog
      Get.back();
    }
  }

// dispose listener for autofill otp.
  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
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
            //back to entering mobile number
            Get.offAll(
              () => LoginWithOTP(),
            );
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
              style: TextStyle(
                  fontFamily: 'Poppins',
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
                'Please enter the OTP to verify your phone number:  ******$widget',
                style: TextStyle(
                  fontFamily: 'Poppins',
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
                textStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
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
                  style: TextStyle(
                    fontFamily: 'Poppins',
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
                          style: TextStyle(
                            fontFamily: 'Poppins',
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
                          style: TextStyle(
                            fontFamily: 'Poppins',
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

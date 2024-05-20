import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:design4you/API/api.dart';
import 'package:design4you/otp/countrycode.dart';
import 'package:design4you/otp/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';

//initialize dio http client
final dio = Dio();

class LoginWithOTP extends StatefulWidget {
  const LoginWithOTP({super.key});

  @override
  State<LoginWithOTP> createState() => _LoginWithOTPState();
}

class _LoginWithOTPState extends State<LoginWithOTP> {
  //aaa
  List<Countrycode> countrycode = [];
  final Countrycode dropdownvalue = Countrycode('India', '+91');

  @override
  void initState() {
    fetchCountryCode();
    super.initState();
  }

  void fetchCountryCode() async {
    String jsonString = await rootBundle.loadString('assets/CountryCodes.json');
    final jsonResponse = json.decode(jsonString);
    setState(() {
      countrycode = (jsonResponse as List)
          .map((json) => Countrycode(json['name'], json['dial_code']))
          .toList();
    });
  }

  void reqOTP() async {
    var mobile = dropdownvalue.code + phoneNumberController.text.trim();
    try {
      final response = await dio.post(
        requestOtpUrl,
        data: {'mobile': mobile},
      );
      print(response.data['OTP']);
      var otp = response.data['OTP'];

      // if (response.statusCode == 200) {
      //   Get.offAll(VerifyOTP(
      //     OtpfromServer: otp,
      //     mobile: mobile,
      //   ));
      // }
      Get.offAll(VerifyOTP(
        OtpfromServer: otp,
        mobile: mobile,
      ));
    } catch (e) {
      print(e);
      //delete this after testing
      Get.offAll(VerifyOTP(
        OtpfromServer: "1234",
        mobile: mobile,
      ));
    }
  }

  var phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;

    Countrycode defaultCountryCode =
        countrycode[97]; // Set your default country code here
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
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(124, 255, 255, 255)),
                      child: Center(
                        child: DropdownButtonFormField(
                          value: defaultCountryCode,
                          iconEnabledColor: Colors.white,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          menuMaxHeight: 500,
                          hint: Text(
                            'Select Country code',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                          dropdownColor: const Color.fromARGB(141, 70, 70, 70),
                          items: countrycode.map((item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Container(
                                  width: mQWidth / 1.5,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: AutoSizeText(
                                    item.name,
                                    style: GoogleFonts.poppins(
                                        color: Colors.white),
                                  )),
                            );
                          }).toList(),
                          onChanged: (value) {
                            print(value!.code);
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
                          reqOTP();
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

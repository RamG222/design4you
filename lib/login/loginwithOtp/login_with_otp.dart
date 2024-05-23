import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:design4you/is_widescreen.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:design4you/API/api.dart';
import 'package:design4you/login/loginwithOtp/countrycode.dart';
import 'package:design4you/login/loginwithOtp/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

//initialize dio http client
final dio = Dio();

class LoginWithOTP extends StatefulWidget {
  const LoginWithOTP({super.key});

  @override
  State<LoginWithOTP> createState() => _LoginWithOTPState();
}

class _LoginWithOTPState extends State<LoginWithOTP> {
  //initialize countrycode list with null list
  List<Countrycode> countrycode = [];
  //giving default value to dropdown value so that by deafult India is chosen.
  final Countrycode dropdownvalue = Countrycode('India', '+91', 'IN');

  @override
  void initState() {
    fetchCountryCode();
    super.initState();
  }

// load countries name and telephone code from json and add in countrycode list
  void fetchCountryCode() async {
    String jsonString = await rootBundle.loadString('assets/CountryCodes.json');
    final jsonResponse = json.decode(jsonString);
    setState(() {
      countrycode = (jsonResponse as List)
          .map((json) =>
              Countrycode(json['name'], json['dial_code'], json['code']))
          .toList();
    });
  }

//send otp to mobile and get otp as response
  void reqOTP() async {
    var mobile = dropdownvalue.code + phoneNumberController.text.trim();
    try {
      final response = await dio.post(
        requestOtpUrl,
        data: {'mobile': mobile},
      );
      print(response.data['OTP']);
      var otp = response.data['OTP'];
      Get.offAll(VerifyOTP(
        OtpfromServer: otp,
        mobile: mobile,
      ));
    } catch (e) {}
  }

  var phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;

    Countrycode defaultCountryCode =
        countrycode[97]; // Set your default country code here
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
                margin: const EdgeInsets.only(left: 50),
                child: Text(
                  'Welcome to ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: mQWidth / 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 50),
                child: Text(
                  'Design for you ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
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
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        height: 60,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(124, 255, 255, 255)),
                        child: Center(
                          child: DropdownButtonFormField(
                            value: defaultCountryCode,
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
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                            iconSize: 0.0,
                            dropdownColor:
                                const Color.fromARGB(141, 70, 70, 70),
                            items: countrycode.map((item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Container(
                                  width: mQWidth / 1.4,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          AutoSizeText(
                                            item.code,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          AutoSizeText(
                                            item.name,
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Image.network(
                                          'https://flagcdn.com/w40/${item.flag.toLowerCase()}.png'),
                                    ],
                                  ),
                                  // child: Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Row(
                                  //       children: [
                                  //         AutoSizeText(
                                  //           item.code,
                                  //           style: TextStyle(
                                  //               fontFamily: 'Poppins',
                                  //               color: Colors.white),
                                  //         ),
                                  //         SizedBox(width: 10),
                                  //         AutoSizeText(
                                  //           item.name,
                                  //           overflow: TextOverflow.ellipsis,
                                  //           style: TextStyle(
                                  //               fontFamil7y: 'Poppins',
                                  //               color: Colors.white),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     Image.network(
                                  //         'https://flagcdn.com/w40/gb.png'),
                                  //   ],
                                  // ),
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              //get dropdown's input and gives code for selected country.
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
                      margin: const EdgeInsets.symmetric(horizontal: 50),
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
                      margin: const EdgeInsets.symmetric(horizontal: 50),
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
                                style: TextStyle(
                                  fontFamily: 'Poppins',
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
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  'Welcome to ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: mQWidth / 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  'Design for you ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
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
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                            iconSize: 0.0,
                            dropdownColor:
                                const Color.fromARGB(141, 70, 70, 70),
                            items: countrycode.map((item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Container(
                                  width: mQWidth / 1.25,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          AutoSizeText(
                                            item.code,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          SizedBox(
                                            child: AutoSizeText(
                                              item.name,
                                              textDirection: TextDirection.ltr,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Image.network(
                                          'https://flagcdn.com/w40/${item.flag.toLowerCase()}.png'),
                                    ],
                                  ),
                                  // child: Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Row(
                                  //       children: [
                                  //         AutoSizeText(
                                  //           item.code,
                                  //           style: TextStyle(
                                  //               fontFamily: 'Poppins',
                                  //               color: Colors.white),
                                  //         ),
                                  //         SizedBox(width: 10),
                                  //         AutoSizeText(
                                  //           item.name,
                                  //           overflow: TextOverflow.ellipsis,
                                  //           style: TextStyle(
                                  //               fontFamil7y: 'Poppins',
                                  //               color: Colors.white),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     Image.network(
                                  //         'https://flagcdn.com/w40/gb.png'),
                                  //   ],
                                  // ),
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              //get dropdown's input and gives code for selected country.
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
                                style: TextStyle(
                                  fontFamily: 'Poppins',
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
}

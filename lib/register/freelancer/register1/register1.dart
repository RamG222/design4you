import 'package:design4you/register/freelancer/register1/uploadContainer.dart';
import 'package:design4you/register/freelancer/register2/register2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

String dropdownvalue = '';

class Register1 extends StatefulWidget {
  const Register1({super.key});

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
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
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              '1',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Personal',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
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
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              '2',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: const Color.fromRGBO(109, 109, 109, 1),
                              ),
                            )),
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
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              '3',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: const Color.fromRGBO(109, 109, 109, 1),
                              ),
                            )),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Privacy',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: const Color.fromRGBO(109, 109, 109, 1),
                            ),
                          ),
                          Text(
                            'Policy',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: const Color.fromRGBO(109, 109, 109, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Details',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 21),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: mQWidth / 2.35,
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(238, 240, 243, 1)),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(238, 240, 243, 1)),
                                  borderRadius: BorderRadius.circular(10)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(238, 240, 243, 1)),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'First Name',
                              labelStyle: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: mQWidth / 2.35,
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(238, 240, 243, 1)),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Last Name',
                              labelStyle: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins', color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Email ID',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Education',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Address Details',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 21),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Pin Code',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'State',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'District',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'City',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Password Details',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Upload Documents',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const UploadDocumentWidget(
              heading: 'Aadhar Card Front',
            ),
            const SizedBox(height: 20),
            const UploadDocumentWidget(
              heading: 'Aadhar Card Back',
            ),
            const SizedBox(height: 20),
            const UploadDocumentWidget(
              heading: 'Pan Card',
            ),
            const SizedBox(height: 20),
            const UploadDocumentWidget(
              heading: 'Light Bill',
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(238, 240, 243, 1),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Live Location',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Get.off(const Register2());
                    },
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Save & Next',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

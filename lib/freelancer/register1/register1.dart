import 'package:design4you/freelancer/register1/uploadContainer.dart';
import 'package:design4you/freelancer/register2/register2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> states = [
  "Andhra Pradesh",
  "Arunachal Pradesh",
  "Assam",
  "Bihar",
  "Chhattisgarh",
  "Goa",
  "Gujarat",
  "Haryana",
  "Himachal Pradesh",
  "Jammu and Kashmir",
  "Jharkhand",
  "Karnataka",
  "Kerala",
  "Ladakh",
  "Madhya Pradesh",
  "Maharashtra",
  "Manipur",
  "Meghalaya",
  "Mizoram",
  "Nagaland",
  "Odisha",
  "Punjab",
  "Rajasthan",
  "Sikkim",
  "Tamil Nadu",
  "Telangana",
  "Tripura",
  "Uttarakhand",
  "Uttar Pradesh",
  "West Bengal",
  "Andaman and Nicobar Islands",
  "Chandigarh",
  "Daman and Diu and Dadra and Nagar Haveli",
  "Delhi",
  "Lakshadweep",
  "Puducherry"
];

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
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Personal',
                            style: GoogleFonts.poppins(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Details',
                            style: GoogleFonts.poppins(
                                color: Colors.red, fontWeight: FontWeight.bold),
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
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: const Color.fromRGBO(109, 109, 109, 1),
                              ),
                            )),
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
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              '3',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: const Color.fromRGBO(109, 109, 109, 1),
                              ),
                            )),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Privacy',
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(109, 109, 109, 1),
                            ),
                          ),
                          Text(
                            'Policy',
                            style: GoogleFonts.poppins(
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
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 21),
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
                              labelStyle:
                                  GoogleFonts.poppins(color: Colors.black),
                              hintStyle:
                                  GoogleFonts.poppins(color: Colors.black),
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
                              labelStyle:
                                  GoogleFonts.poppins(color: Colors.black),
                              hintStyle:
                                  GoogleFonts.poppins(color: Colors.black),
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
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
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
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Address Details',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 21),
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
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
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
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
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
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
                      ),
                    ),
                    // Container(
                    //   height: 60,
                    //   decoration: BoxDecoration(
                    //       border: Border.all(
                    //         color: const Color.fromRGBO(238, 240, 243, 1),
                    //       ),
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: Center(
                    //     child: DropdownButtonFormField(
                    //       menuMaxHeight: 300,
                    //       decoration: const InputDecoration(
                    //         contentPadding:
                    //             EdgeInsets.symmetric(horizontal: 11),
                    //         border: InputBorder.none,
                    //         focusedBorder: InputBorder.none,
                    //         errorBorder: InputBorder.none,
                    //         focusedErrorBorder: InputBorder.none,
                    //         disabledBorder: InputBorder.none,
                    //         enabledBorder: InputBorder.none,
                    //       ),
                    //       hint: Text(
                    //         'Select State code',
                    //         style: GoogleFonts.poppins(color: Colors.black),
                    //       ),
                    //       items: states.map((item) {
                    //         return DropdownMenuItem(
                    //           value: item,
                    //           child: Text(item),
                    //         );
                    //       }).toList(),
                    //       onChanged: (value) {
                    //         dropdownvalue = value!;
                    //       },
                    //     ),
                    //   ),
                    // ),
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
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
                      ),
                    ), const SizedBox(height: 20),
                    Text(
                      'Password Details',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 22),
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
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
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
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Upload Documents',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 22),
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
                            style: GoogleFonts.poppins(fontSize: 15),
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
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have a account?',
                        style: GoogleFonts.poppins(),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

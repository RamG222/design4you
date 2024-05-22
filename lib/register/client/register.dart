import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool checked = false;

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
                  Text(
                    'Register',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Please enter detail to register',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(109, 109, 109, 1)),
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
                        labelText: 'Shop/Business/Company Name',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      minLines: 3,
                      maxLines: 3,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Tell us about Shop/Business/Company',
                        alignLabelWithHint: true,
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
                        labelText: 'Landmark and Area',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                        hintStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Logo Details',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromRGBO(238, 240, 243, 1))),
                      child: InkWell(
                        onTap: () {
                          Get.snackbar('title', 'message');
                        },
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.backup_outlined,
                                size: 35,
                              ),
                              SizedBox(height: 20),
                              Text('Upload Logo'),
                            ],
                          ),
                        ),
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
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.red,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          value: checked,
                          onChanged: (value) {
                            setState(() {
                              checked = value!;
                            });
                          }),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: 'Yes, I understand and agree to the ',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Designforyou Terms of Service.',
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.red),
                              ),
                              TextSpan(
                                text: ' including the ',
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.black),
                              ),
                              TextSpan(
                                text: 'User Agreement',
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.red),
                              ),
                              TextSpan(
                                text: ' and',
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.black),
                              ),
                              TextSpan(
                                text: ' Privacy Policy',
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Create Account',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have a account?',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.red),
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

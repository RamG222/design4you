import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:design4you/freelancer/register2/add_certification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> categories = [
  'Graphic Design',
  'Web Design',
  'video Advertising',
  'Social Media Marketing'
];
List<String> subCategories = [
  'Logo Design',
  'Flyer Design',
  'video Advertising',
  'Social Media Marketing'
];

String categorydropdownvalue = '';
String subcategorydropdownvalue = '';

class Register2 extends StatefulWidget {
  const Register2({super.key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
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
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              '2',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Professional',
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
                      'Skills',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 21),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(238, 240, 243, 1),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: CustomDropdown(
                        hintText: 'Category',
                        decoration: CustomDropdownDecoration(
                            hintStyle: GoogleFonts.poppins(
                          color: Colors.black,
                        )),
                        items: categories,
                        onChanged: (value) {
                          value = '';
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(238, 240, 243, 1),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: CustomDropdown.multiSelect(
                        hintText: 'Sub Category',
                        items: subCategories,
                        decoration: CustomDropdownDecoration(
                            hintStyle: GoogleFonts.poppins(
                          color: Colors.black,
                        )),
                        onListChanged: (value) {
                          print(value);
                          value.clear();
                        },
                      )),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selected categories',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 21),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Row(
                                children: [
                                  const Icon(Icons.delete_outlined),
                                  const SizedBox(width: 3),
                                  Text(
                                    'Delete all',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: const Color.fromRGBO(
                                            109, 109, 109, 1)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(247, 247, 247, 1),
                              border: Border.all(
                                  color: Color.fromRGBO(238, 240, 243, 1))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 12, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Graphic Designing',
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Logo Designing',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(4),
                                        color: Colors.red,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 12.0),
                                        child: Text(
                                          'Add Price',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete_outline_rounded))
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(247, 247, 247, 1),
                              border: Border.all(
                                  color: Color.fromRGBO(238, 240, 243, 1))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 12, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Graphic Designing',
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Logo Designing',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(4),
                                        color: Colors.red,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 12.0),
                                        child: Text(
                                          'Add Price',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete_outline_rounded))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Work Experience',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 21),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(228, 228, 228, 1)),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '0-1 Year',
                                  style:
                                      GoogleFonts.poppins(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(228, 228, 228, 1)),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '0-1 Year',
                                  style:
                                      GoogleFonts.poppins(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(228, 228, 228, 1)),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2-3 Years',
                                  style:
                                      GoogleFonts.poppins(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(228, 228, 228, 1)),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '3-5 Years',
                                  style:
                                      GoogleFonts.poppins(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Certification',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 21),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(AddCertification());
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Color.fromRGBO(0, 87, 255, 1),
                              ),
                              SizedBox(width: 5),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 87, 255, 1)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/microsoft.png',
                              width: mQWidth / 7,
                              height: mQWidth / 6,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Graphic Designer',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Microsoft',
                                  style: GoogleFonts.poppins(),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Issued 10-03-2013',
                                  style: GoogleFonts.poppins(),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(228, 228, 228, 1)),
                                  ),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'View Credentials  ',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(
                                            Icons.link,
                                            color: Colors.black,
                                          ),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_outlined,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/microsoft.png',
                              width: mQWidth / 7,
                              height: mQWidth / 6,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Graphic Designer',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Microsoft',
                                  style: GoogleFonts.poppins(),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Issued 10-03-2013',
                                  style: GoogleFonts.poppins(),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(228, 228, 228, 1)),
                                  ),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'View Credentials  ',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(
                                            Icons.link,
                                            color: Colors.black,
                                          ),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_outlined,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/microsoft.png',
                              width: mQWidth / 7,
                              height: mQWidth / 6,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Graphic Designer',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Microsoft',
                                  style: GoogleFonts.poppins(),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Issued 10-03-2013',
                                  style: GoogleFonts.poppins(),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(228, 228, 228, 1)),
                                  ),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'View Credentials  ',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(
                                            Icons.link,
                                            color: Colors.black,
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_outlined,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'See All',
                          style:
                              TextStyle(color: Color.fromRGBO(0, 87, 255, 1)),
                        ),
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rewards',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 21),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Color.fromRGBO(0, 87, 255, 1),
                              ),
                              SizedBox(width: 5),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 87, 255, 1)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Portfolio',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 21),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Color.fromRGBO(0, 87, 255, 1),
                              ),
                              SizedBox(width: 5),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 87, 255, 1)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40),
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
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

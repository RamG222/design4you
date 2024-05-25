import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:design4you/is_widescreen.dart';
import 'package:design4you/register/freelancer/register2/add_certification.dart';
import 'package:design4you/register/freelancer/register2/display_categories_details_container.dart';
import 'package:design4you/register/freelancer/register2/edit_certification.dart';
import 'package:design4you/register/freelancer/register2/tablet/display_categories_details_container_tablet.dart';
import 'package:design4you/register/freelancer/register3/register3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                      isWideScreen(context)
                          ? const SizedBox(width: 30)
                          : const SizedBox(width: 20),
                      Container(
                        width: 20,
                        height: 1,
                        color: const Color.fromRGBO(109, 109, 109, 1),
                      ),
                      isWideScreen(context)
                          ? const SizedBox(width: 30)
                          : const SizedBox(width: 20),
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
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Professional',
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
                      isWideScreen(context)
                          ? const SizedBox(width: 30)
                          : const SizedBox(width: 20),
                      Container(
                        width: 20,
                        height: 1,
                        color: const Color.fromRGBO(109, 109, 109, 1),
                      ),
                      isWideScreen(context)
                          ? const SizedBox(width: 30)
                          : const SizedBox(width: 20),
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
                    isWideScreen(context)
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Skills',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: mQWidth / 2.3,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              238, 240, 243, 1),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: CustomDropdown(
                                      hintText: 'Category',
                                      decoration: CustomDropdownDecoration(
                                          hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      )),
                                      items: categories,
                                      onChanged: (value) {
                                        value = '';
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    height: 60,
                                    width: mQWidth / 2.3,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              238, 240, 243, 1),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                        child: CustomDropdown.multiSelect(
                                      hintText: 'Sub Category',
                                      items: subCategories,
                                      decoration: CustomDropdownDecoration(
                                          hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      )),
                                      onListChanged: (value) {
                                        print(value);
                                        value.clear();
                                      },
                                    )),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Text(
                                'Skills',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromRGBO(
                                          238, 240, 243, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: CustomDropdown(
                                  hintText: 'Category',
                                  decoration: CustomDropdownDecoration(
                                      hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
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
                                      color: const Color.fromRGBO(
                                          238, 240, 243, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: CustomDropdown.multiSelect(
                                  hintText: 'Sub Category',
                                  items: subCategories,
                                  decoration: CustomDropdownDecoration(
                                      hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  )),
                                  onListChanged: (value) {
                                    print(value);
                                    value.clear();
                                  },
                                )),
                              ),
                            ],
                          ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selected categories',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Row(
                                children: [
                                  const Icon(Icons.delete_outlined),
                                  const SizedBox(width: 3),
                                  Text(
                                    'Delete all',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        color: const Color.fromRGBO(
                                            109, 109, 109, 1)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        isWideScreen(context)
                            ? DisplayCategoriesDetailsContainerTablet()
                            : DisplayCategoriesDetailsContainer(),
                        SizedBox(height: 20),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Work Experience',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 21),
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
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black),
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
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black),
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
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black),
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
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 21),
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
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(242, 242, 242, 0.5),
                          border: Border.all(
                              color: Color.fromRGBO(238, 240, 243, 1))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Graphic Designer',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Microsoft',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      'Issued 10-03-2013',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                Get.to(EditCertification());
                              },
                              icon: Icon(
                                Icons.edit_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(242, 242, 242, 0.5),
                          border: Border.all(
                              color: Color.fromRGBO(238, 240, 243, 1))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Graphic Designer',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Microsoft',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      'Issued 10-03-2013',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                Get.to(EditCertification());
                              },
                              icon: Icon(
                                Icons.edit_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(242, 242, 242, 0.5),
                          border: Border.all(
                              color: Color.fromRGBO(238, 240, 243, 1))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Graphic Designer',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Microsoft',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      'Issued 10-03-2013',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                Get.to(EditCertification());
                              },
                              icon: Icon(
                                Icons.edit_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rewards',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 21),
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
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 21),
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
                        Get.off(const Register3());
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

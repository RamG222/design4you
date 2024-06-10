import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:design4you/mainApp/home/screen0/get_budget.dart';
import 'package:design4you/mainApp/home/screen0/notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<String> catName = [
  'Graphic Design',
  'UIUX Design',
  'Social Media Marketing',
  'Video Advertising',
  'Web Design',
  'App Development',
  'Digital Marketing',
  'Influencers',
  'Animation/VFX',
];
List<String> catDesp = [
  'Logo, Flyer, Poster, Banner',
  'Wireframe,UI Design',
  'Profile Making,Post Design',
  'Motion Graphics',
  'Web,Research,Testimonials',
  'Frontend,QA,Backend',
  'Social,Connect,Banner',
  'Animation,2D/3D,VFX',
  'Art Painting'
];
List<String> catImg = [
  'assets/images/graphics.png',
  'assets/images/graphics.png',
  'assets/images/graphics.png',
  'assets/images/graphics.png',
  'assets/images/graphics.png',
  'assets/images/graphics.png',
  'assets/images/graphics.png',
  'assets/images/graphics.png',
  'assets/images/graphics.png',
];

class LookingForScreen extends StatefulWidget {
  const LookingForScreen({super.key});

  @override
  State<LookingForScreen> createState() => _LookingForScreenState();
}

class _LookingForScreenState extends State<LookingForScreen> {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.red,
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  '0 Service Added',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
            Text(
              "|",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Get.to(GetBudget());
                    },
                    child: Text(
                      'Get Budget',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                IconButton(
                    onPressed: () {
                      Get.to(GetBudget());
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mQHeight / 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(NotificationsScreen());
                        },
                        icon: Badge(
                          backgroundColor: Colors.red,
                          isLabelVisible: true,
                          label: const Text("2"),
                          child: const Icon(Icons.notifications_none_outlined),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // do something
                          Get.snackbar('Clicked on ', 'Favorite');
                        },
                        icon: Badge(
                          backgroundColor: Colors.red,
                          isLabelVisible: true,
                          label: const Text("3"),
                          child: const Icon(Icons.favorite_outline),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.snackbar('Clicked on ', 'Profile');
                        },
                        icon: Image.asset(
                          'assets/images/profile.png',
                          width: mQWidth / 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Looking for',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 1000,
                width: double.infinity,
                child: ListView.builder(
                  padding: EdgeInsets.all(4),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: catName.length,
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      tilePadding: EdgeInsets.all(0),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    catImg[index],
                                    width: 80,
                                    height: 80,
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 230,
                                        child: AutoSizeText(
                                          catName[index],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 230,
                                        child: AutoSizeText(
                                          catDesp[index],
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(238, 240, 243, 1),
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: CustomDropdown.multiSelect(
                            hintText: 'Print Design',
                            decoration: CustomDropdownDecoration(
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                            ),
                            items: ['choice 1', 'choice 2'],
                            onListChanged: (value) {
                              print(value);
                              // value = '';
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

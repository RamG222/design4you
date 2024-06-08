import 'package:auto_size_text/auto_size_text.dart';
import 'package:design4you/mainApp/home/screen0/notifications.dart';
import 'package:design4you/mainApp/home/screen0/recent.dart';
import 'package:design4you/mainApp/home/screen0/top_categories_card.dart';
import 'package:design4you/mainApp/home/screen0/whats_new.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navigationIndex = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  navigationIndex = 0;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.home,
                    color: navigationIndex == 0 ? Colors.red : Colors.black,
                  ),
                  AutoSizeText(
                    'Home',
                    style: TextStyle(
                      fontSize: mQWidth / 60,
                      color: navigationIndex == 0 ? Colors.red : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  navigationIndex = 1;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.grid_view_outlined,
                    color: navigationIndex == 1 ? Colors.red : Colors.black,
                  ),
                  AutoSizeText(
                    'Category',
                    style: TextStyle(
                      fontSize: mQWidth / 60,
                      color: navigationIndex == 1 ? Colors.red : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  navigationIndex = 2;
                });
              },
              child: Column(
                children: [
                  SizedBox(height: 4),
                  Center(
                    child: Image.asset(
                      'assets/images/uparrow.png',
                      width: 35,
                      height: 35,
                    ),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  navigationIndex = 3;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.message_outlined,
                    color: navigationIndex == 3 ? Colors.red : Colors.black,
                  ),
                  AutoSizeText(
                    'Message',
                    style: TextStyle(
                      fontSize: mQWidth / 60,
                      color: navigationIndex == 3 ? Colors.red : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  navigationIndex = 4;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.post_add,
                    color: navigationIndex == 4 ? Colors.red : Colors.black,
                  ),
                  AutoSizeText(
                    'My Post',
                    style: TextStyle(
                      fontSize: mQWidth / 60,
                      color: navigationIndex == 4 ? Colors.red : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
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
                      InkWell(
                        onTap: () {
                          Get.snackbar('Clicked on ', 'Logo');
                        },
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: mQHeight / 18,
                        ),
                      ),
                      SizedBox(width: mQWidth / 50),
                      InkWell(
                        onTap: () {
                          Get.snackbar('Clicked on ', 'Go Premium');
                        },
                        child: Image.asset(
                          'assets/images/premium.png',
                          height: mQHeight / 25,
                        ),
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
              SizedBox(height: mQHeight / 30),
              Text(
                'Hello...',
                style: TextStyle(
                  fontSize: mQWidth / 18,
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(156, 156, 156, 1),
                ),
              ),
              Text(
                'Bhavesh Sukam',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: mQWidth / 18,
                  fontFamily: 'Poppins',
                ),
              ),
              TopCategoriesCard(),
              SizedBox(height: mQHeight / 60),
              whatsNewWidget(),
              Recent(),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: mQHeight / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(255, 191, 191, 0.5),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Invite your Friends',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'Porem ipsum dolor sit amet, consectetur adipiscing elit. ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        ),
                      ),
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
                              'Invite Friends',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

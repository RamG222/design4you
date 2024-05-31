import 'package:auto_size_text/auto_size_text.dart';
import 'package:design4you/mainApp/home/top_categories_card.dart';
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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
              child: Column(
                children: [
                  SizedBox(height: 4),
                  Center(
                    child: Image.asset(
                      'assets/images/uparrow.png',
                      width: mQWidth / 12,
                      height: mQWidth / 12,
                    ),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
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
              onPressed: () {},
              child: Column(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: navigationIndex == 4 ? Colors.red : Colors.black,
                  ),
                  AutoSizeText(
                    'Orders',
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
                          // do something
                          Get.snackbar('Clicked on ', 'Notification icon');
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
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/8526/c35c/36ae50b47963cdb4e49faf08f3d199a9?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HzK21R9QPM30p~MfHdJOhwPBX5LIgx3vhEHvtdP22MxVrjB0izt2~tk7Z~K5-zXADvEbmjkzluMAXlkZtqyZ0jrpEsnmt9liEF8CGfLG6WHQ6hZA3AQfGWnSBqOV8pogKLyW3WKXE0K2zvBhita2PTNpL7Xdqo3uKfiX-vPp1OyxqRutqARM9BB2b0TP8qxAOcAvM4i923pFzqXUxNbzK2cyMGOKefzK6yLJUW007oRMDSTDfezcOnUS4gHAgDxUx78oOSYQcVs2MSa5G5Wb595YiUBjLlr97D8gxP5Rw7ieLiwp3L9Vlb3uSpfdoVzc2quo4gtHvPvD7A-w61spTg__'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

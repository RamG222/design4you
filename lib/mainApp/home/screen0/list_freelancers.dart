import 'package:auto_size_text/auto_size_text.dart';
import 'package:design4you/mainApp/home/screen0/freelancer_profile.dart';
import 'package:design4you/mainApp/home/screen0/notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int tabIndex = 0;

class ListFreelancersScreen extends StatefulWidget {
  const ListFreelancersScreen({super.key});

  @override
  State<ListFreelancersScreen> createState() => _ListFreelancersScreenState();
}

class _ListFreelancersScreenState extends State<ListFreelancersScreen> {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: Column(
          children: [Text('data')],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    Text(
                      'Freelancers',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
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
                        //
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
                          //
                        },
                        icon: Icon(Icons.tune)),
                  ],
                ),
              ],
            ),
            //app bar row ^^
            SizedBox(height: 20),
            // Tabs
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabIndex = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: tabIndex == 0
                            ? BorderRadius.only(
                                topLeft: Radius.circular(7),
                                topRight: Radius.circular(7))
                            : null,
                        color: tabIndex == 0
                            ? Color.fromRGBO(193, 90, 119, 1)
                            : Color.fromRGBO(245, 245, 245, 1),
                      ),
                      width: mQWidth / 3.35,
                      height: 45,
                      child: Center(
                          child: Text(
                        'Beginner',
                        style: TextStyle(
                          color: tabIndex == 0 ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabIndex = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: tabIndex == 1
                            ? BorderRadius.only(
                                topLeft: Radius.circular(7),
                                topRight: Radius.circular(7))
                            : null,
                        color: tabIndex == 1
                            ? Color.fromRGBO(49, 121, 170, 1)
                            : Color.fromRGBO(245, 245, 245, 1),
                      ),
                      width: mQWidth / 3.35,
                      height: 45,
                      child: Center(
                          child: Text(
                        'Intermediate',
                        style: TextStyle(
                          color: tabIndex == 1 ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabIndex = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: tabIndex == 2
                            ? BorderRadius.only(
                                topLeft: Radius.circular(7),
                                topRight: Radius.circular(7),
                              )
                            : null,
                        color: tabIndex == 2
                            ? Color.fromRGBO(87, 188, 184, 1)
                            : Color.fromRGBO(245, 245, 245, 1),
                      ),
                      width: mQWidth / 3.35,
                      height: 45,
                      child: Center(
                          child: Text(
                        'Professional',
                        style: TextStyle(
                          color: tabIndex == 2 ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
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
                            'All',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: Colors.black),
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
                            'Graphics Designer',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: Colors.black),
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
                            'UIUX Designer',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: Colors.black),
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
                            'Web Designer',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //list
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Graphic Designer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ))
                    ],
                  ),
                  ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          //
                          Get.to(FreelancerProfileScreen());
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(238, 240, 243, 1)),
                              borderRadius: BorderRadius.circular(14)),
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(14),
                                    child: Image.network(
                                      'https://s3-alpha-sig.figma.com/img/6e1f/744a/fb76a9e104887043296183a0554f752f?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OlUADlD0cURDo35FPJH3RGpqhprZMLV5ytvPPfQcvL51wNJKBi1stRIt5ApCl3d47k89Sq41OkzDI-vjD1oKnBtlclSDmo3nWVHeySUirYkIRyedbJ10MWNAiouvqk4uXqX69rgeLUOnqERG8a~7CvXVfyBIhXBtuzgfX7ifdb7MlhsYoJQgExSVNz-sWxKvBn-eYzGqjFEw-6MBKRk-pc-VVLnyQ5jKVzsn--6t8Kv-P4YfaYDgu00EHJiXJWRZMyuYwZhqch8Yoz9bXyuqprVKSYVgJgNdY9wlHfCZZ4J1hNuAdq2F5dLBfljCYAffFHxPWl0zdDGjJfSxlflFbQ__',
                                      width: mQWidth / 3.5,
                                      height: 160,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'Robert Fox',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.favorite_border),
                                          onPressed: () {},
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'Graphics Designer',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromRGBO(
                                                  242, 242, 242, 0.5)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 2),
                                            child: Text('Logo'),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromRGBO(
                                                  242, 242, 242, 0.5)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text('Flyer'),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromRGBO(
                                                  242, 242, 242, 0.5)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text('Poster'),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text('Min. ₹ 200 - Max. ₹ 700'),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          '• ',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 21,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Active',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'UIUX Designer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ))
                    ],
                  ),
                  ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(14)),
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.network(
                                    'https://s3-alpha-sig.figma.com/img/6e1f/744a/fb76a9e104887043296183a0554f752f?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OlUADlD0cURDo35FPJH3RGpqhprZMLV5ytvPPfQcvL51wNJKBi1stRIt5ApCl3d47k89Sq41OkzDI-vjD1oKnBtlclSDmo3nWVHeySUirYkIRyedbJ10MWNAiouvqk4uXqX69rgeLUOnqERG8a~7CvXVfyBIhXBtuzgfX7ifdb7MlhsYoJQgExSVNz-sWxKvBn-eYzGqjFEw-6MBKRk-pc-VVLnyQ5jKVzsn--6t8Kv-P4YfaYDgu00EHJiXJWRZMyuYwZhqch8Yoz9bXyuqprVKSYVgJgNdY9wlHfCZZ4J1hNuAdq2F5dLBfljCYAffFHxPWl0zdDGjJfSxlflFbQ__',
                                    width: mQWidth / 3.5,
                                    height: 160,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AutoSizeText(
                                        'Robert Fox',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.favorite_border),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AutoSizeText(
                                        'Graphics Designer',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromRGBO(
                                                242, 242, 242, 0.5)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 2),
                                          child: Text('Logo'),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromRGBO(
                                                242, 242, 242, 0.5)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text('Flyer'),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromRGBO(
                                                242, 242, 242, 0.5)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text('Poster'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text('Min. ₹ 200 - Max. ₹ 700'),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        '• ',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Active',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

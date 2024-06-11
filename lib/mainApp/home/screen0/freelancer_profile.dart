import 'package:design4you/mainApp/home/screen0/notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FreelancerProfileScreen extends StatefulWidget {
  const FreelancerProfileScreen({super.key});

  @override
  State<FreelancerProfileScreen> createState() =>
      _FreelancerProfileScreenState();
}

class _FreelancerProfileScreenState extends State<FreelancerProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
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
                      '',
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
                  ],
                ),
              ],
            ),
            //app bar row ^^
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.network(
                        'https://s3-alpha-sig.figma.com/img/9e86/7d7d/1d86dacf210ab1f480cda3b305060bb6?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=a71cxYdY42vFyK2btZ16f1gVOA6AdReXxRsxjeSbfMoaFPnz9SoR30QzZsngY7z6~2O2o7BCIIbib7ACtU1RISG3qyBThH0mmNysNpIL4dukOxIyNmtBcTTOaQhouBOCQJdOwxwXaNIpKJSdyPgCa9SJN7CnAoeeDl3yOy-wxbz59tzwiYLRp7euWFok4BmRT-fUDu-hgFysGY5JoBQqI8spXldocN6h7x4WiIlmsTmkCQ1VWQ85DskZY6Cpi9TxFEEQYG2t9q~C-vvGfr88i5DuXdmtdbh-82xL31Ifcwi0yF1CO2nfleiNiJrfTd~m8AhavCfcFYCKqSXVwMZysQ__',
                        width: double.infinity,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                      Transform.translate(
                        offset: Offset(0, 60),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(300),
                            child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/6e1f/744a/fb76a9e104887043296183a0554f752f?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OlUADlD0cURDo35FPJH3RGpqhprZMLV5ytvPPfQcvL51wNJKBi1stRIt5ApCl3d47k89Sq41OkzDI-vjD1oKnBtlclSDmo3nWVHeySUirYkIRyedbJ10MWNAiouvqk4uXqX69rgeLUOnqERG8a~7CvXVfyBIhXBtuzgfX7ifdb7MlhsYoJQgExSVNz-sWxKvBn-eYzGqjFEw-6MBKRk-pc-VVLnyQ5jKVzsn--6t8Kv-P4YfaYDgu00EHJiXJWRZMyuYwZhqch8Yoz9bXyuqprVKSYVgJgNdY9wlHfCZZ4J1hNuAdq2F5dLBfljCYAffFHxPWl0zdDGjJfSxlflFbQ__',
                              width: 155,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70),
                      Center(
                        child: Text(
                          'Robert Fox',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Center(child: Text('Graphic Designer')),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Hi, I'm Robert Fox, a passionate video advertiser xwith a knack for crafting compelling.",
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'About',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

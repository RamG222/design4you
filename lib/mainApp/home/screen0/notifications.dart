import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
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
              children: [
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: mQHeight - 60,
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://s3-alpha-sig.figma.com/img/dfd7/0265/b6c97dc2786bd118f98dfa0858e4ecaf?Expires=1718582400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T4eSVi9sd4qlRpbnZp5T~nVB6YRZYxIMTsgMUMj5wzg7dEtLHT4Cy-gpUXNFanaRkP970oenUremOxcAqmDx6x9pa94Wt4SEikeLAT2fYB7HB57VfHsKsOS0oMO3o9VJdzoSicVoi9XhFzpUWR8HqEXKgAyx9nh-lMKiHxaGEQ7ql6IZ9PnxHWnUeQVb0OvwNIghqxPuRXpoMG1zUk7Q3vNnU0jbcTONTRvAsUaCsVnvgAif6~8DusAY7ErbfVUv9VPMG6qaPQuEPbZj8jYclkxnVoPOzURA2PAWtOzRG-r9tKV4n3E6kc98wWyOa7Tu~XT2WATvpFqCM0qF9ItmiQ__',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            Expanded(
                              child: AutoSizeText(
                                'Korem ipsum dolor sit amet, consectetur adipiscing elit Nunc.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 7),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    size: 30,
                                    Icons.delete_outline_outlined,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  '12.05 AM',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            child: Divider()),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

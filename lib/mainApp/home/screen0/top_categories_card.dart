import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:design4you/mainApp/home/screen0/categoriesModel.dart';
import 'package:design4you/mainApp/home/screen0/looking_for.dart';
import 'package:design4you/register/freelancer/register2/category_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<CategoriesModel> categories = [
  CategoriesModel(
      title: 'Graphic Design',
      imageURL:
          'https://s3-alpha-sig.figma.com/img/9afe/51bd/79c8b154d23425012bfa65b3ad42d06b?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cEoLZCD18dvR1-zep9IKTLTFxFXdOtnJjPqVOm5Oh~eYKEnZSok~WEUUS3id2ewVBgK78VUYsM00xDwWftyZZesGogzHVHSvgEpAozPEX5ightjspwPa3~nOIJpgm~V2nsADWrl0Mj6iQ-Rmgmrl7xh9Ytgw5YWNFU0JjUTJ64lIiC67HXNQZiwOfNbpRP1keBjEi54BOkNp3cUwTXuz6u2KiG9Rt4d4w0xQ3TMbO75Q~okSX4FouGPGuR-7pENvaVPXDCTa88rM7ZwAMOD~hlm9dv-aMH2Bp901F9ZX4FNxu5ANPDarmKR7yRP0MyeGRB570Fz8OZeWLm9WtUukaA__'),
  CategoriesModel(
      title: 'UIUX Design',
      imageURL:
          'https://s3-alpha-sig.figma.com/img/4184/97a4/98cdfe732747f7125ebe3d9e743b087b?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=aLYOxj5P~SgknS6TsRc9zv5GPpSWCKm57NNp1oztXAN0bRjdNt4d594IftF1GSRqd6vg5uMRSvS2YT3ttQHqNf5CH6KJTn6I56yy45a8-BP7qLY9~ac4LHAlwIzjD-qu7GdQ5hJM6ZEAC3bL6c09P4qdcH00WOlSOU9P9xXfO~XjInOOfo8RVTlQWZhJyVLmq8oviU9dBDyH0Oe77LIVzPtRuLGUbZ-E6qd-IQhFVQyqJZcA7O-RcbyMmJTEjnfsn89iSYVWLXgd7tOGwXdvjpO~WW~SQ9Kwddi7cdN129hz4ga5vI3LY490niD-4Wj10qndTN2v4seyZVlPEkXNDg__'),
  CategoriesModel(
      title: 'Social Media Marketing',
      imageURL:
          'https://s3-alpha-sig.figma.com/img/ae76/88db/52a5f26c7f47a28552758e5e4515b7c2?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VU91XbkY5Hgn2u8TxuW7rhEUUw-Iy4cyWvSXBO9uiP-lh5MYL1cS~g2Pr40S-q2CaXTtoSTL1mwGmzY8AaBmBOlU-qlEuB9ADf1ofUirXZXjR2j7C9WaVpK~bPdS4jAUKakLK6pxFD1Ij9jBIn2V0dHg2SX0BBRpaAJJkHIPGE21a6V-7I5GveflI6nwlNvTcq6XCKgTmm5OVqBawRrSblK8BLy6WPq599lDp~fSoocvH813sXGNrJO0ofJVBD05lCtlY~8~3qmj0hi2Egjp1fcrzd2MuK2avPD9z5GqiyTzowQFezvE9kPRaJXLbS2IoAXiGdwKB7DhOjj5kurerA__')
];

class TopCategoriesCard extends StatefulWidget {
  const TopCategoriesCard({super.key});

  @override
  State<TopCategoriesCard> createState() => _TopCategoriesCardState();
}

class _TopCategoriesCardState extends State<TopCategoriesCard> {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    return Column(
      children: [
        SizedBox(height: mQHeight / 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Looking for',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: mQWidth / 22,
                fontFamily: 'Poppins',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  LookingForScreen(),
                );
              },
              child: Text(
                'See All',
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        SizedBox(height: mQHeight / 100),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              var data = categories[index];
              return InkWell(
                onTap: () {
                  Get.snackbar('Clicked on', data.title);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                      height: 160,
                      width: 135,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            child: Image.network(
                              height: 160,
                              width: 135,
                              data.imageURL,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Colors.black.withAlpha(0),
                                  const Color.fromARGB(8, 0, 0, 0),
                                  Color.fromARGB(50, 0, 0, 0),
                                  Color.fromARGB(255, 16, 16, 16),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: AutoSizeText(
                                data.title,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

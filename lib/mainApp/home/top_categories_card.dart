import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:design4you/mainApp/home/categoriesModel.dart';
import 'package:design4you/register/freelancer/register2/category_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<CategoriesModel> categories = [
  CategoriesModel(
      title: 'Graphic Design',
      imageURL:
          'https://s3-alpha-sig.figma.com/img/9afe/51bd/79c8b154d23425012bfa65b3ad42d06b?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iF~DI6D5ZBIHlshHaGw--vXs8lYRD-z~wCPc1ghchNCBxEep16dM9aYpj2Ox5Mqve8zcn3Vq6rmZ4bomjWssE2-MDbSaeTwevJH69VnUd5gHV4U~HZEXX49MNDFLXb52CiplSbVcjO9UCABBTb1WRk3GoOHwWkMZe5Sads1iO2PVAkr9Ndt6~6g8Wh9faIpeaqmGzno6fVZksqWZbMEIrR7K8unRiS6uvp2pzx6M~RIPuJpK2NxTEF4lEKk8Xpv2eET8RF0iQrenpisZMwNTHQGrRFiE8NVvTa1lErlRLMd8oFvC3yNGgtWsihSobbJow1vQ4Uaq4OToAraBHnRGAw__'),
  CategoriesModel(
      title: 'UIUX Design',
      imageURL:
          'https://s3-alpha-sig.figma.com/img/4184/97a4/98cdfe732747f7125ebe3d9e743b087b?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VIqrNJZ0T-XNg9p5ZkAI41MPafGjxnQjFjyF~QBICpZQp~w-jRrcokrwlgPFA56s6LUeimGg5NuFSCvbtWhx97HunU3Xu4lnqwEm1Dp77bnfm-FdLLvD~PHbJzhtRuMVpanvF3tRAFqWpgl99l06Tc6A2ZbquPZVMbm5veZwXoWjInCH31AMLYvBUZxuCyhvMIJwNYAVMOcpEinKeZu7tH~4Ubo5pzBqG-BnFJIYuIgwNm3z8r873l04-wIZ1oM9R27T3J7-lUu28TmXho-652iw0kZCElDBWNgICoHY-0m1vGZnJ7BZZwCrfkWkee72kRh833Gchb9dt9yuvmXqrg__'),
  CategoriesModel(
      title: 'Social Media Marketing',
      imageURL:
          'https://s3-alpha-sig.figma.com/img/ae76/88db/52a5f26c7f47a28552758e5e4515b7c2?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CU7I2xDErM4fvXPiXU~F-G0PejAOVPtI5IvNgrfJ2ff8qLCkP9skC1uLZ6Orsuw9yXFeCXCBURTjWG9aTFGcEiIsa3xPwpBjlFX~7eKaJJ0~QEGnHwzXjhNc0tK8d2khw2irFz5JUjmg9zfT2oPp9GG~4lgk9lrOnD7Qi430hdO6RWvednUpvsS-o7RZYpIOb-W85nha2~6AghFq-nkHy~2qoRAf54q4HoUUh~C9SwAaZZ2hinxoJqo-VUmYF52hYOHiDiOSmhAxw5uHKT5I1VrAvnZTBFzApkEm1FKwG87oeb72rgzmf6yzaKjx3OWEmZBrIf14LihYO50Rm8nloQ__')
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
              onPressed: () {},
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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_group_v2/widgets/view_models/radio_group_controller.dart';
import 'package:radio_group_v2/widgets/views/radio_group.dart';

RadioGroupController radioController = RadioGroupController();
RadioGroupController radioController2 = RadioGroupController();

class PostSummary extends StatefulWidget {
  const PostSummary({super.key});

  @override
  State<PostSummary> createState() => _PostSummaryState();
}

class _PostSummaryState extends State<PostSummary> {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  Text(
                    'Post Summary',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 21),
                  ),
                ],
              ),
              SizedBox(height: 12),
              ExpansionTileGroup(
                  toggleType: ToggleType.expandOnlyCurrent,
                  children: [
                    ExpansionTileItem(
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      backgroundColor: Color.fromRGBO(193, 90, 119, 1),
                      collapsedBackgroundColor: Color.fromRGBO(193, 90, 119, 1),
                      title: Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          'Beginner',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 500,
                        ),
                      ],
                    ),
                    ExpansionTileItem(
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      backgroundColor: Color.fromRGBO(49, 121, 170, 1),
                      collapsedBackgroundColor: Color.fromRGBO(49, 121, 170, 1),
                      title: Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          'Intermediate',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 500,
                        ),
                      ],
                    ),
                    ExpansionTileItem(
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      backgroundColor: Color.fromRGBO(87, 188, 184, 1),
                      collapsedBackgroundColor: Color.fromRGBO(87, 188, 184, 1),
                      title: Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          'Professional',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 500,
                        ),
                      ],
                    ),
                  ]),
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(238, 240, 243, 1),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        SizedBox(
                          width: mQWidth / 1.4,
                          height: 120,
                          child: AutoSizeText(
                            'Qorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 6,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 12,
                    child: Container(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 10, right: 10),
                      color: Colors.white,
                      child: Text(
                        'Post Description',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                ' Fullfill Requirements',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Text(
                      'Priority',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 10),
                  RadioGroup(
                    orientation: RadioGroupOrientation.horizontal,
                    controller: radioController,
                    values: [
                      "Urgent/24 hrs",
                      "Regular",
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Text(
                      'Deal With',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 10),
                  RadioGroup(
                    orientation: RadioGroupOrientation.horizontal,
                    controller: radioController2,
                    values: [
                      "Via D4U",
                      "Direct",
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
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
                      'Save & Submit',
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
            ],
          ),
        ),
      ),
    );
  }
}

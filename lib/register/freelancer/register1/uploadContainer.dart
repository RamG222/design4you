import 'package:auto_size_text/auto_size_text.dart';
import 'package:design4you/is_widescreen.dart';
import 'package:flutter/material.dart';

bool clickedOnFileUpload = false;

class UploadDocumentWidget extends StatefulWidget {
  const UploadDocumentWidget({super.key, required this.heading});
  final String heading;

  @override
  State<UploadDocumentWidget> createState() => _UploadDocumentWidgetState();
}

class _UploadDocumentWidgetState extends State<UploadDocumentWidget> {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    if (isWideScreen(context)) {
      if (clickedOnFileUpload) {
        return Stack(
          children: <Widget>[
            Container(
              width: mQWidth / 2.3,
              height: 90,
              margin: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(238, 240, 243, 1),
                ),
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Icon(
                              Icons.description_outlined,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            AutoSizeText(
                              'File Name ',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 20),
                            ),
                            AutoSizeText(
                              'File Size ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: const Color.fromRGBO(152, 150, 146, 1),
                              ),
                            ),
                          ]),
                    ],
                  ),
                  Column(children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Icon(
                          size: 25,
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_outline,
                            size: 30,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
            Positioned(
              left: 50,
              top: 12,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                color: Colors.white,
                child: Text(
                  widget.heading,
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Colors.black, fontSize: 12),
                ),
              ),
            ),
          ],
        );
      } else {
        // when not clicked on fileUpload
        return Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 18, 0),
          height: 60,
          width: mQWidth / 2.3,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(238, 240, 243, 1),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  widget.heading,
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.black),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () async {
                      // fileName = await pickFile();
                      setState(() {
                        clickedOnFileUpload = true;
                      });
                    },
                    icon: const Icon(
                      Icons.attach_file,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    } else {
      if (clickedOnFileUpload) {
        return Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 90,
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(238, 240, 243, 1),
                ),
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Icon(
                              Icons.description_outlined,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            AutoSizeText(
                              'File Name ',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 20),
                            ),
                            AutoSizeText(
                              'File Size ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: const Color.fromRGBO(152, 150, 146, 1),
                              ),
                            ),
                          ]),
                    ],
                  ),
                  Column(children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Icon(
                          size: 25,
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_outline,
                            size: 30,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
            Positioned(
              left: 50,
              top: 12,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                color: Colors.white,
                child: Text(
                  widget.heading,
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Colors.black, fontSize: 12),
                ),
              ),
            ),
          ],
        );
      } else {
        // when not clicked on fileUpload
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(238, 240, 243, 1),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  widget.heading,
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.black),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () async {
                      // fileName = await pickFile();
                      setState(() {
                        clickedOnFileUpload = true;
                      });
                    },
                    icon: const Icon(
                      Icons.attach_file,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    }
  }
}

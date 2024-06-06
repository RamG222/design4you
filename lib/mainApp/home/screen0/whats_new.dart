import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class whatsNewWidget extends StatelessWidget {
  const whatsNewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          "What's New",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: mQWidth / 22,
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(height: mQHeight / 60),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Stack(
                children: [
                  Image.network(
                    'https://s3-alpha-sig.figma.com/img/8526/c35c/36ae50b47963cdb4e49faf08f3d199a9?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HzK21R9QPM30p~MfHdJOhwPBX5LIgx3vhEHvtdP22MxVrjB0izt2~tk7Z~K5-zXADvEbmjkzluMAXlkZtqyZ0jrpEsnmt9liEF8CGfLG6WHQ6hZA3AQfGWnSBqOV8pogKLyW3WKXE0K2zvBhita2PTNpL7Xdqo3uKfiX-vPp1OyxqRutqARM9BB2b0TP8qxAOcAvM4i923pFzqXUxNbzK2cyMGOKefzK6yLJUW007oRMDSTDfezcOnUS4gHAgDxUx78oOSYQcVs2MSa5G5Wb595YiUBjLlr97D8gxP5Rw7ieLiwp3L9Vlb3uSpfdoVzc2quo4gtHvPvD7A-w61spTg__',
                    width: mQWidth,
                    height: mQWidth / 1.2,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQHeight / 3.8),
                        AutoSizeText(
                          'New Additions',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: mQWidth / 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Row(
                          children: [
                            AutoSizeText(
                              'Check it',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: mQWidth / 18,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Icon(
                              Icons.arrow_right_alt_rounded,
                              color: Colors.white,
                              size: mQWidth / 14,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

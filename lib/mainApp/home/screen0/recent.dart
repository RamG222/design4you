import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

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
              'Recently viewed',
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
            ),
            // SizedBox(
            //   height: 500,
            //   child: ListView.builder(
            //     physics: NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) {
            //       return Container();
            //     },
            //   ),
            // )
          ],
        ),
      ],
    );
  }
}

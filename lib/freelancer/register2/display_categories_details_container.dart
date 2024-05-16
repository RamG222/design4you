import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool clickedOnAddPrice = true;
double workExp = 0.0;

class DisplayCategoriesDetailsContainer extends StatefulWidget {
  const DisplayCategoriesDetailsContainer({
    super.key,
  });

  @override
  State<DisplayCategoriesDetailsContainer> createState() =>
      _DisplayCategoriesDetailsContainerState();
}

class _DisplayCategoriesDetailsContainerState
    extends State<DisplayCategoriesDetailsContainer> {
  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;
    if (clickedOnAddPrice) {
      return Container(
        height: 335,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(247, 247, 247, 1),
            border: Border.all(color: Color.fromRGBO(238, 240, 243, 1))),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 12, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Graphic Designing',
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Logo Designing',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_outline_rounded),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Price Details',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Tooltip(
                  message: 'This is informational data',
                  child: Icon(
                    Icons.info_outline,
                    size: 18,
                  ),
                ),
              ],
            ),

            // slider
            Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '0-1 Yrs',
                      style: GoogleFonts.poppins(
                        fontWeight:
                            workExp == 0 ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    Text(
                      '2-4 Yrs',
                      style: GoogleFonts.poppins(
                        fontWeight: workExp == 0.5
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    Text(
                      '5+ Yrs',
                      style: GoogleFonts.poppins(
                        fontWeight:
                            workExp == 1 ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: CupertinoSlider(
                    activeColor: Colors.blue,
                    divisions: 2,
                    value: workExp,
                    onChanged: (value) {
                      setState(() {
                        workExp = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: mQWidth / 2.5,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Minimum',
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: mQWidth / 2.5,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(238, 240, 243, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Maximum',
                        labelStyle: GoogleFonts.poppins(color: Colors.black),
                        hintStyle: GoogleFonts.poppins(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'May be later',
                      style: GoogleFonts.poppins(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      //
                    },
                    child: SizedBox(
                      height: 50,
                      width: mQWidth / 3.65,
                      child: Center(
                        child: Text(
                          'Submit',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(247, 247, 247, 1),
            border: Border.all(color: Color.fromRGBO(238, 240, 243, 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 12, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Graphic Designing',
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Logo Designing',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      clickedOnAddPrice = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(4),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 12.0),
                      child: Text(
                        'Add Price',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.delete_outline_rounded))
              ],
            ),
          ],
        ),
      );
    }
  }
}

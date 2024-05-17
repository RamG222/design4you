import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    extends State<DisplayCategoriesDetailsContainer>
    with TickerProviderStateMixin {
  late final _controllerAddPriceBtn = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..value = 1.0;

  late final Animation<double> _animationAddPriceBtn = CurvedAnimation(
    parent: _controllerAddPriceBtn,
    curve: Curves.fastOutSlowIn,
  );

  late final _controllerDetailsView = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );

  late final Animation<double> _animationDetailsView = CurvedAnimation(
    parent: _controllerDetailsView,
    curve: Curves.fastOutSlowIn,
  );
  @override
  void dispose() {
    _controllerAddPriceBtn.dispose();
    _controllerDetailsView.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    var mQWidth = mQSize.width;
    var mQHeight = mQSize.height;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(247, 247, 247, 1),
          border: Border.all(color: Color.fromRGBO(238, 240, 243, 1))),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
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
                const Spacer(),
                ScaleTransition(
                  alignment: Alignment.centerRight,
                  scale: _animationAddPriceBtn,
                  child: TextButton(
                      onPressed: () {
                        _controllerAddPriceBtn.reverse();
                        _controllerDetailsView.forward();
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Text(
                          'Add Price',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ),
                const Icon(Icons.delete),
              ],
            ),
          ),
          SizeTransition(
            sizeFactor: _animationDetailsView,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Price Details',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
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
                SizedBox(height: 22),
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
                SizedBox(height: 15),
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
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: mQWidth / 2.7,
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
                            labelStyle:
                                GoogleFonts.poppins(color: Colors.black),
                            hintStyle: GoogleFonts.poppins(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: mQWidth / 2.7,
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
                            labelStyle:
                                GoogleFonts.poppins(color: Colors.black),
                            hintStyle: GoogleFonts.poppins(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          _controllerDetailsView.reverse();
                          _controllerAddPriceBtn.forward();
                        },
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
                          _controllerDetailsView.reverse();
                          _controllerAddPriceBtn.forward();
                        },
                        child: SizedBox(
                          height: 50,
                          width: mQWidth / 4,
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
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
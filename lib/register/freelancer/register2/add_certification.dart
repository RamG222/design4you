import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AddCertification extends StatefulWidget {
  const AddCertification({super.key});

  @override
  State<AddCertification> createState() => _AddCertificationState();
}

class _AddCertificationState extends State<AddCertification> {
  bool checked = false;
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
              SizedBox(height: mQHeight / 15),
              Text(
                'Add Certification',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 21),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(238, 240, 243, 1)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Certification Name',
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                  hintStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(238, 240, 243, 1)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Issuinng Organization',
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                  hintStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(238, 240, 243, 1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Issue Date',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 15),
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            useSafeArea: true,
                            context: context,
                            builder: (context) {
                              return SfDateRangePicker(
                                showNavigationArrow: true,
                                cancelText: 'Cancel',
                                confirmText: 'Select',
                                enablePastDates: true,
                                onSelectionChanged: (dateTime) {
                                  //convert dateTime to date only
                                  var sh = dateTime.value
                                      .toIso8601String()
                                      .split("T")[0];
                                  print(sh);
                                  Get.back();
                                },
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.date_range_outlined),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(238, 240, 243, 1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Expiry Date',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 15),
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            useSafeArea: true,
                            context: context,
                            builder: (context) {
                              return SfDateRangePicker(
                                showNavigationArrow: true,
                                cancelText: 'Cancel',
                                confirmText: 'Select',
                                enablePastDates: true,
                                onSelectionChanged: (dateTime) {
                                  //convert dateTime to date only
                                  var sh = dateTime.value
                                      .toIso8601String()
                                      .split("T")[0];
                                  print(sh);
                                  Get.back();
                                },
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.date_range_outlined),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.red,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      value: checked,
                      onChanged: (value) {
                        setState(() {
                          checked = value!;
                        });
                      }),
                  Text(
                    'Does not expire',
                    style: GoogleFonts.poppins(
                        color: Color.fromRGBO(156, 156, 156, 1)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(238, 240, 243, 1)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Credential ID',
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                  hintStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(238, 240, 243, 1)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Credential URL',
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                  hintStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
              SizedBox(height: mQHeight / 10),
              Column(
                children: [
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        'Back',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                          'Add',
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
            ],
          ),
        ),
      ),
    );
  }
}

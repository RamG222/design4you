import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWithPw extends StatefulWidget {
  const LoginWithPw({super.key});

  @override
  State<LoginWithPw> createState() => _LoginWithPwState();
}

class _LoginWithPwState extends State<LoginWithPw> {
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
            children: [
              SizedBox(height: 150),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: mQWidth / 5,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Welcome,',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Text(
                'to Design for you',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 40),
              ),
              SizedBox(height: 40),
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
                  labelText: 'Registered Email ID',
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                  hintStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(238, 240, 243, 1)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Password',
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                  hintStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 250),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: GoogleFonts.poppins(color: Colors.red),
                    )),
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
                      'Login',
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
      ),
    );
  }
}

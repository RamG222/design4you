import 'package:flutter/material.dart';

class AccountCreated extends StatefulWidget {
  const AccountCreated({super.key});

  @override
  State<AccountCreated> createState() => _AccountCreatedState();
}

class _AccountCreatedState extends State<AccountCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Image.asset(
              'assets/images/done.gif',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            Text(
              'Account created successfully',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

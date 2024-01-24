import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:profile_design_1/profile/profile_screen.dart';
import 'package:profile_design_1/profile/profile_page.dart';

import 'package:profile_design_1/SignInScreens/signup_screen.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  void initState() {
    super.initState();
    // Check the current user's email verification status when the page is initialized.
    checkEmailVerificationStatus();
  }

  Future<void> checkEmailVerificationStatus() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user
          .reload(); // Reload the user to get the latest email verification status.
      user = FirebaseAuth
          .instance.currentUser; // Get the updated user information.
      if (user!.emailVerified) {
        // If email is verified, navigate to the profile screen.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Profile_Page(),
          ),
        );
      }
    }
  }

  Future<void> sendEmailVerification() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user.sendEmailVerification();
      // Provide feedback to the user if needed.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ),
              );
            },
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 30, top: 30, right: 30),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("AssetsImage/verificationImage.png"),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Verify Your Email Address",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Text(
              "Congratulations! Your account awaits. Verify your email to start experiencing people around you.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Check email verification status when the button is pressed.
                checkEmailVerificationStatus();
              },
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text(
                "Continue",
                style: TextStyle(
                    fontSize: 16, letterSpacing: 2.2, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Resend email verification when the button is pressed.
                sendEmailVerification();
              },
              child: Text(
                "Resend Email",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

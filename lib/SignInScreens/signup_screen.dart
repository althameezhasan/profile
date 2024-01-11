import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/home_screen.dart';
// import 'package:profile_design_1/SignInScreens/home_screen.dart';
import 'package:profile_design_1/profile/profile_page.dart';
import 'package:profile_design_1/reusable/reusable_widget.dart';

// import '../reusable_widget/resuable_widget.dart';
import '../utils/color_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _PasswordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.2, 20, 0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Username", Icons.person_outline,
                      false, _userNameTextController),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Email id", Icons.person_outline,
                      false, _emailTextController),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter email", Icons.lock_outline, true,
                      _PasswordTextController),
                  SizedBox(
                    height: 20,
                  ),
                  signInSignUpButton(context, false, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile_Page()));
                  })
                ],
              ),
            ),
          )),
    );
  }
}

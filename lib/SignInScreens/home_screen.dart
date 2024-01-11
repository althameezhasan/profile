import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/signin_screen.dart';
import 'package:profile_design_1/SignInScreens/signin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Log out"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ));
          },
        ),
      ),
    );
  }
}

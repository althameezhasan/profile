import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:profile_design_1/SignInScreens/signin_screen.dart';
import 'package:profile_design_1/Subscription/SubscriptionPage.dart';
// import 'package:profile_design_1/profile/profile_page.dart';
// import 'package:profile_design_1/profile/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SubscriptionPage());
  }
}

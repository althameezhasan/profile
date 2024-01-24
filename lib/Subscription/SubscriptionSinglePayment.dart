// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:profile_design_1/profile/profile_screen.dart';
// import 'package:profile_design_1/utils/color_utils.dart';

class SubscriptionSinglePayment extends StatefulWidget {
  const SubscriptionSinglePayment({super.key});

  @override
  State<SubscriptionSinglePayment> createState() =>
      _SubscriptionSinglePaymentState();
}

class _SubscriptionSinglePaymentState extends State<SubscriptionSinglePayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => (ProfileScreen()),
              ),
            );
          },
        ),
        // title: Text(
        //   'Profile',
        //   style: TextStyle(
        //     color: Colors.green,
        //   ),
        // ),
        //
      ),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "Subscription",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Select a package and feel elite",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 8,
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.width,
              height: 500,
              decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [
                  //     hexStringToColor("B0B0B0"),
                  //     // hexStringToColor("9546C4"),
                  //     hexStringToColor("555555"),
                  //   ],
                  //   // begin: Alignment.topCenter,
                  //   // end: Alignment.bottomCenter,
                  //   transform: GradientRotation(pi / 4),
                  // ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(left: 16, top: 25, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(height: 0.0), // Space between icon and text
                      Text(
                        "Silver",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 8.0), // Space between icon and text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '₹1004.99',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            '/yearly',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 15,
                    thickness: 2,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

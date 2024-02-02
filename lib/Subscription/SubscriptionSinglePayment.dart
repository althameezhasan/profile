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
                  SizedBox(
                    width: 8,
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Name',
                      hintText: 'name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                            color: Colors.black), // Set the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                            color: Colors
                                .black), // Set the border color when focused
                      ),
                      labelStyle: TextStyle(
                          color: Colors.black), // Set the label text color
                    ),
                  ),
                  SizedBox(
                    width: 8,
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Mobile Number',
                      hintText: '+91 123456789',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                            color: Colors.black), // Set the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                            color: Colors
                                .black), // Set the border color when focused
                      ),
                      labelStyle: TextStyle(
                          color: Colors.black), // Set the label text color
                    ),
                  ),
                  SizedBox(
                    width: 8,
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(height: 0.0), // Space between icon and text
                      Text(
                        "Month",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0), // Space between icon and text
                      Text(
                        'February',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(height: 0.0), // Space between icon and text
                      Text(
                        "Amount",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0), // Space between icon and text
                      Text(
                        '₹1004.99',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(height: 0.0), // Space between icon and text
                      Text(
                        "Begins",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0), // Space between icon and text
                      Text(
                        '01-02-2024',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(height: 0.0), // Space between icon and text
                      Text(
                        "Ends",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0), // Space between icon and text
                      Text(
                        '01-02-2025',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(height: 0.0), // Space between icon and text
                      Text(
                        "Type",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0), // Space between icon and text
                      Text(
                        'Standard',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(0, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            // side: BorderSide(color: Colors.white),
                          ),
                        ),
                        onPressed: () {
                          // Handle button 1 click
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      // VerticalDivider(
                      //   color: Colors.black, // Adjust the color as needed
                      //   thickness: 4,
                      //   width: 20,
                      //   indent: 3,
                      //   endIndent: 3, // Adjust the width as needed
                      // ),
                      Container(
                        width: 1, // Adjust the width of the divider
                        height: 30, // Adjust the height of the divider
                        color: Colors.black, // Set the color of the divider
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            // side: BorderSide(color: Colors.white),
                          ),
                        ),
                        onPressed: () {
                          // Handle button 1 click
                        },
                        child: Text(
                          'Pay Now',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
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

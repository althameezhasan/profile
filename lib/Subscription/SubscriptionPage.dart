// import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:profile_design_1/Subscription/SubscriptionSinglePayment.dart';
// import 'package:profile_design_1/profile/profile_page.dart';
import 'package:profile_design_1/utils/color_utils.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>(),
            //   ),
            // );
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
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      hexStringToColor("B0B0B0"),
                      // hexStringToColor("9546C4"),
                      hexStringToColor("555555"),
                    ],
                    // begin: Alignment.topCenter,
                    // end: Alignment.bottomCenter,
                    transform: GradientRotation(pi / 4),
                  ),
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
                        style: TextStyle(fontSize: 18, color: Colors.white),
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
                                color: Colors.white),
                          ),
                          Text(
                            '/yearly',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 15,
                    thickness: 2,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_task,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12.0), // Space between icon and text
                      Text(
                        "Features 1",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                    height: 2,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12.0), // Space between icon and text
                      Text(
                        "Features 2",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 16.0),
                  VerticalDivider(
                    color: Colors.white,
                    width: 10,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubscriptionSinglePayment(),
                            ),
                          );
                        },
                        child: Text(
                          'Single User',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      // VerticalDivider(
                      //   color: const Color.fromARGB(
                      //       255, 255, 255, 255), // Adjust the color as needed
                      //   thickness: 4,
                      //   width: 20,
                      //   indent: 2,
                      //   endIndent: 2, // Adjust the width as needed
                      // ),
                      Container(
                        width: 1, // Adjust the width of the divider
                        height: 30, // Adjust the height of the divider
                        color: Colors.white, // Set the color of the divider
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
                          'Multiple User',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8,
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      hexStringToColor("#FFD700"),
                      // hexStringToColor("9546C4"),
                      hexStringToColor("#DAA520"),
                    ],
                    // begin: Alignment.topCenter,
                    // end: Alignment.bottomCenter,
                    transform: GradientRotation(pi / 4),
                  ),
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(left: 16, top: 25, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(height: 0.0), // Space between icon and text
                      Text(
                        "Gold",
                        style: TextStyle(fontSize: 18, color: Colors.white),
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
                                color: Colors.white),
                          ),
                          Text(
                            '/yearly',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 15,
                    thickness: 2,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_task,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12.0), // Space between icon and text
                      Text(
                        "Features 1",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                    height: 2,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12.0), // Space between icon and text
                      Text(
                        "Features 2",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 16.0),
                  VerticalDivider(
                    color: Colors.white,
                    width: 10,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
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
                          'Single User',
                          style: TextStyle(color: Colors.white),
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
                        color: Colors.white, // Set the color of the divider
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
                          'Multiple User',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8,
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      hexStringToColor("#B0C4DE"),
                      // hexStringToColor("9546C4"),
                      hexStringToColor("#4F94CD"),
                    ],
                    // begin: Alignment.topCenter,
                    // end: Alignment.bottomCenter,
                    transform: GradientRotation(pi / 4),
                  ),
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(left: 16, top: 25, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(height: 0.0), // Space between icon and text
                      Text(
                        "Platinum",
                        style: TextStyle(fontSize: 18, color: Colors.white),
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
                                color: Colors.white),
                          ),
                          Text(
                            '/yearly',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 15,
                    thickness: 2,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_task,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12.0), // Space between icon and text
                      Text(
                        "Features 1",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                    height: 2,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12.0), // Space between icon and text
                      Text(
                        "Features 2",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 16.0),
                  VerticalDivider(
                    color: Colors.white,
                    width: 10,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
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
                          'Single User',
                          style: TextStyle(color: Colors.white),
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
                        color: Colors.white, // Set the color of the divider
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
                          'Multiple User',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
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
                'Skip',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

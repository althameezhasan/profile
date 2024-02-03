import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:profile_design_1/Subscription/SubscriptionPage.dart';
import 'package:profile_design_1/Subscription/multiplememberlist.dart';
// import 'package:firebase_core/firebase_core.dart';

class MultiUserOwner extends StatefulWidget {
  const MultiUserOwner({Key? key}) : super(key: key);

  @override
  State<MultiUserOwner> createState() => _MultiUserOwnerState();
}

class _MultiUserOwnerState extends State<MultiUserOwner> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  late CollectionReference<Map<String, dynamic>> _membershipsRef;

  @override
  void initState() {
    super.initState();
    _membershipsRef = FirebaseFirestore.instance.collection('Membership');
  }

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
                builder: (context) => (SubscriptionPage()),
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
                    controller: _nameController,
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
                    height: 30,
                  ),
                  TextFormField(
                    controller: _mobileController,
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

                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Enter Mail id',
                      hintText: 'xxx@gmail.com',
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
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TeamListMembership(),
                          ),
                        );
                        CollectionReference collref =
                            FirebaseFirestore.instance.collection('Membership');
                        collref.add({
                          'name': _nameController.text,
                          'email': _emailController.text,
                          'mobile': _mobileController.text,
                        });
                      },
                      child: const Text(
                        'Add Owner',
                        style: TextStyle(
                          fontSize: 16, // Adjust the font size as needed
                          fontWeight: FontWeight
                              .w400, // Adjust the font weight as needed
                          color: Colors.green,
                        ),
                      )),

                  // SizedBox(height: 0.0), // Space between icon and text
                ],
              ),
            ),
          ],
        ),
      ),

      // body: Container(

      //   child: Form(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         TextFormField(
      //           controller: _nameController,
      //           decoration: InputDecoration(labelText: 'Name'),
      //           validator: (value) {
      //             if (value == null || value.isEmpty) {
      //               return 'Please enter name';
      //             }
      //             return null;
      //           },
      //         ),
      //         TextFormField(
      //           controller: _mobileController,
      //           decoration: InputDecoration(labelText: 'Mobile'),
      //           validator: (value) {
      //             if (value == null || value.isEmpty) {
      //               return 'Please enter mobile';
      //             }
      //             return null;
      //           },
      //         ),
      //         TextFormField(
      //           controller: _emailController,
      //           decoration: InputDecoration(labelText: 'Email'),
      //           validator: (value) {
      //             if (value == null || value.isEmpty) {
      //               return 'Please enter email';
      //             }
      //             return null;
      //           },
      //         ),
      //         SizedBox(height: 16),
      //         // MaterialButton(
      //         //   onPressed: () async {
      //         //     print(
      //         //         "${_nameController.text},${_mobileController.text},${_emailController.text}");

      //         //     // Prepare the membership data
      //         //     Map<String, dynamic> membership = {
      //         //       'name': _nameController.text,
      //         //       'mob': _mobileController.text,
      //         //       'mail': _emailController.text
      //         //     };

      //         //     // Insert the membership data into Firestore
      //         //     await _membershipsRef.add(membership);

      //         //     // Clear the text controllers
      //         //     _nameController.clear();
      //         //     _mobileController.clear();
      //         //     _emailController.clear();
      //         //   },
      //         //   child: const Text('Insert Data'),
      //         //   color: Colors.blue,
      //         //   textColor: Colors.white,
      //         //   minWidth: 300,
      //         //   height: 40,
      //         // ),
      //         ElevatedButton(
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => TeamListMembership(),
      //                 ),
      //               );
      //               CollectionReference collref =
      //                   FirebaseFirestore.instance.collection('Membership');
      //               collref.add({
      //                 'name': _nameController.text,
      //                 'email': _emailController.text,
      //                 'mobile': _mobileController.text,
      //               });
      //             },
      //             child: const Text('Add Owner')),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

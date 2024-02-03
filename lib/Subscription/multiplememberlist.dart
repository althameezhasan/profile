import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:profile_design_1/utils/color_utils.dart';

class TeamListMembership extends StatefulWidget {
  const TeamListMembership({Key? key}) : super(key: key);

  @override
  State<TeamListMembership> createState() => _TeamListMembershipState();
}

class _TeamListMembershipState extends State<TeamListMembership> {
  late User? user; // Declare user variable

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser; // Retrieve current user
    // String? userId = user?.uid; // Retrieve user ID

    // Now you can use userId to query Firestore or perform other tasks
  }

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
            Navigator.pop(context);
          },
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('Membership')
              .where('email', isEqualTo: user?.email) // Check email
              .where('userId', isEqualTo: user?.uid)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }
            final documents = snapshot.data!.docs;
            if (documents.isEmpty) {
              return Center(
                child: Text('No data found for the current user.'),
              );
            }
            return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (context, index) {
                final document = documents[index];
                final email = document['email'] ?? '';
                final mobile = document['mobile'] ?? '';
                final name = document['name'] ?? '';
                return Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name: $name',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Email: $email',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Mobile: $mobile',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                );
              },
            );
          }),
    );
  }
}

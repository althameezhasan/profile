import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class MultiUserOwner extends StatefulWidget {
  const MultiUserOwner({Key? key}) : super(key: key);

  @override
  State<MultiUserOwner> createState() => _MultiUserOwnerState();
}

class _MultiUserOwnerState extends State<MultiUserOwner> {
  // final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  //  late FirebaseFirestore _db;
  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Owner');
  }
  // void _addOwner() async {
  //   try {
  //     await FirebaseFirestore.instance.collection('owners').add({
  //       'name': _nameController.text,
  //       'mobile': _mobileController.text,
  //       'email': _emailController.text,
  //     });
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => OwnerDetailsPage()),
  //     );
  //   } catch (e) {
  //     print('Error adding owner: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Owner'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          // key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _mobileController,
                decoration: InputDecoration(labelText: 'Mobile'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter mobile';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              MaterialButton(
                onPressed: () {
                  Map<String, String> Owner = {
                    'name': _nameController.text,
                    'mob': _mobileController.text,
                    'mail': _emailController.text
                  };

                  dbRef.push().set(Owner);
                },
                child: const Text('Insert Data'),
                color: Colors.blue,
                textColor: Colors.white,
                minWidth: 300,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class OwnerDetailsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Owner Details'),
//       ),
//       body: StreamBuilder(
//         stream: FirebaseFirestore.instance.collection('owners').snapshots(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           }
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           return ListView(
//             children: snapshot.data!.docs.map((DocumentSnapshot document) {
//               Map<String, dynamic> data =
//                   document.data() as Map<String, dynamic>;
//               return ListTile(
//                 title: Text(data['name']),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Mobile: ${data['mobile']}'),
//                     Text('Email: ${data['email']}'),
//                   ],
//                 ),
//               );
//             }).toList(),
//           );
//         },
//       ),
//     );
//   }
// }

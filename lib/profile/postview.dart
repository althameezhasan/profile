import 'package:flutter/material.dart';
import 'package:profile_design_1/profile/profile_page.dart';

import 'update_profile_screen.dart';

class _app_bar extends State<Profile_Page> {
  // String buttonLabel = "Follow";

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
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Main_Profile(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  final List<String> postImageAssetPaths = [
    'AssetsImage/user_image.jpg',
    'AssetsImage/post2.jpg',
    'AssetsImage/post3.jpg',

    // Add more post image asset paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: postImageAssetPaths.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(postImageAssetPaths[index]),
              fit: BoxFit.cover,
            ),
          ),
          // You can customize the child as needed
          // For example, you might want to add an overlay or other widgets
          // on top of the image.
          child: Center(
              // child: Text(
              //   'Post $index',
              //   style: TextStyle(color: Colors.white),
              // ),
              ),
        );
      },
    );
  }
}

class MyvideoGridView extends StatelessWidget {
  final List<String> postImageAssetPaths = [
    'AssetsImage/user_image.jpg',
    'AssetsImage/post2.jpg',
    'AssetsImage/post3.jpg',

    // Add more post image asset paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: postImageAssetPaths.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(postImageAssetPaths[index]),
              fit: BoxFit.cover,
            ),
          ),
          // You can customize the child as needed
          // For example, you might want to add an overlay or other widgets
          // on top of the image.
          child: Center(
              // child: Text(
              //   'Post $index',
              //   style: TextStyle(color: Colors.white),
              // ),
              ),
        );
      },
    );
  }
}

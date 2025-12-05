import 'package:flutter/material.dart';
import 'package:minmalist_tiktok_ui_clone/widgets/post_template.dart';

class UserPost1 extends StatelessWidget {
  const UserPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostTemplate(
        userName: "abdul_hadi_jalil",
        videoDescription: "Minimalist TikTok UI",
        hashTags: "#flutterdev #developer #UI/UX",
        noOfLikes: "2.2M",
        noOfComments: "1303",
        noOfShares: "804",
        userPost: Container(color: Colors.red),
      ),
    );
  }
}

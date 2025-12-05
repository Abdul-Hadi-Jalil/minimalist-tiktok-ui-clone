import 'package:flutter/material.dart';
import 'package:minmalist_tiktok_ui_clone/widgets/post_template.dart';

class UserPost5 extends StatelessWidget {
  const UserPost5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostTemplate(
        userName: "hanzla_khan",
        videoDescription: "unity hacks",
        hashTags: "#gamedeveloper #unity",
        noOfLikes: "200K",
        noOfComments: "50",
        noOfShares: "10",
        userPost: Container(color: Colors.orange),
      ),
    );
  }
}

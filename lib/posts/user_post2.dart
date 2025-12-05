import 'package:flutter/material.dart';
import 'package:minmalist_tiktok_ui_clone/widgets/post_template.dart';

class UserPost2 extends StatelessWidget {
  const UserPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostTemplate(
        userName: "Muhammad arham",
        videoDescription: "Data Engineer Project",
        hashTags: "#developer #dataengineer",
        noOfLikes: "1.1M",
        noOfComments: "0324",
        noOfShares: "420",
        userPost: Container(color: Colors.blue),
      ),
    );
  }
}

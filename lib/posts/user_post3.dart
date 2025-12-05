import 'package:flutter/material.dart';
import 'package:minmalist_tiktok_ui_clone/widgets/post_template.dart';

class UserPost3 extends StatelessWidget {
  const UserPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostTemplate(
        userName: "moiz_khan202",
        videoDescription: "Artificial Neural Network tutorial",
        hashTags: "#labinstructor #ucp",
        noOfLikes: "3K",
        noOfComments: "0911",
        noOfShares: "67",
        userPost: Container(color: Colors.green),
      ),
    );
  }
}

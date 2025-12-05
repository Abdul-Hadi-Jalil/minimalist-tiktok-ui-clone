import 'package:flutter/material.dart';
import 'package:minmalist_tiktok_ui_clone/widgets/post_template.dart';

class UserPost4 extends StatelessWidget {
  const UserPost4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostTemplate(
        userName: "abdullah_malik",
        videoDescription: "react native basics",
        hashTags: "#frontenddeveloper #programmer",
        noOfLikes: "100K",
        noOfComments: "1023",
        noOfShares: "400",
        userPost: Container(color: Colors.purple),
      ),
    );
  }
}

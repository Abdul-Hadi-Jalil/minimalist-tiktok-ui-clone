import 'package:flutter/material.dart';

class PostTemplate extends StatelessWidget {
  final String userName;
  final String videoDescription;
  final String hashTags;
  final String noOfLikes;
  final String noOfComments;
  final String noOfShares;
  final Widget userPost;

  const PostTemplate({
    super.key,
    required this.userName,
    required this.videoDescription,
    required this.hashTags,
    required this.noOfLikes,
    required this.noOfComments,
    required this.noOfShares,
    required this.userPost,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // post at the background
          userPost,

          // user name and caption
          Padding(
            padding: EdgeInsetsGeometry.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "@$userName",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: videoDescription),
                      TextSpan(
                        text: hashTags,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // buttons
          Padding(
            padding: EdgeInsetsGeometry.only(right: 16, bottom: 48),
            child: Align(
              alignment: AlignmentGeometry.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 4,
                children: [
                  Icon(Icons.favorite, size: 35),
                  Text(noOfLikes),

                  SizedBox(height: 10),

                  Icon(Icons.chat_bubble, size: 35),
                  Text(noOfComments),

                  SizedBox(height: 10),

                  Icon(Icons.send, size: 35),
                  Text(noOfShares),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UserPost1 extends StatelessWidget {
  const UserPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // post at the background

          // user name and caption
          Padding(
            padding: EdgeInsetsGeometry.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '@createdbyAbdulHadiJalil',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "tiktok ui project"),
                      TextSpan(
                        text: " #flutter #project2",
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
                  Text('2.2M'),

                  SizedBox(height: 10),

                  Icon(Icons.chat_bubble, size: 35),
                  Text('1303'),

                  SizedBox(height: 10),

                  Icon(Icons.send, size: 35),
                  Text('804'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

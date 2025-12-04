import 'package:flutter/material.dart';
import 'package:minmalist_tiktok_ui_clone/posts/user_post1.dart';
import 'package:minmalist_tiktok_ui_clone/posts/user_post2.dart';
import 'package:minmalist_tiktok_ui_clone/posts/user_post3.dart';
import 'package:minmalist_tiktok_ui_clone/posts/user_post4.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [UserPost1(), UserPost2(), UserPost3(), UserPost4()],
      ),
    );
  }
}

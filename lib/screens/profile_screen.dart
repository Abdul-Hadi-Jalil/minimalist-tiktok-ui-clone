import 'package:flutter/material.dart';
import 'package:minmalist_tiktok_ui_clone/widgets/profile_tab1.dart';
import 'package:minmalist_tiktok_ui_clone/widgets/profile_tab2.dart';
import 'package:minmalist_tiktok_ui_clone/widgets/profile_tab3.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person_add, color: Colors.black),
          title: Text(
            'Abdul Hadi Jalil',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.menu, color: Colors.black),
            SizedBox(width: 10),
          ],
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // user profile photo
            CircleAvatar(radius: 50, backgroundColor: Colors.grey.shade300),

            // username
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                '@abdul_hadi_jalil',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),

            // followers, following, likes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '50',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '550',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '100',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Likes',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 15),

            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                // edit button
                Container(
                  padding: EdgeInsets.symmetric(vertical: 11, horizontal: 40),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      'Edit profile',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
                // photo button
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Icon(Icons.camera_alt_rounded, color: Colors.black),
                  ),
                ),
                // bookmark button
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            // bio
            Text('bio', style: TextStyle(color: Colors.grey.shade700)),

            // tabs
            TabBar(
              tabs: [
                Tab(icon: Icon(Icons.grid_3x3, color: Colors.black)),
                Tab(icon: Icon(Icons.favorite, color: Colors.black)),
                Tab(
                  icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(
                physics: ScrollPhysics(),
                children: [ProfileTab1(), ProfileTab2(), ProfileTab3()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

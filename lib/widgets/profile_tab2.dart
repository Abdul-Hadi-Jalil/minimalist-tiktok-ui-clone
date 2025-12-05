import 'package:flutter/material.dart';

class ProfileTab2 extends StatelessWidget {
  const ProfileTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsGeometry.all(4),
          child: Container(height: 30, width: 30, color: Colors.deepPurple),
        );
      },
    );
  }
}

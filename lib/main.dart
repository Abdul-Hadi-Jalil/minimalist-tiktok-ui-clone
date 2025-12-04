import 'package:flutter/material.dart';
import 'package:minmalist_tiktok_ui_clone/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minimalist TikTok UI',
      theme: ThemeData(brightness: Brightness.dark),
      home: const App(),
    );
  }
}

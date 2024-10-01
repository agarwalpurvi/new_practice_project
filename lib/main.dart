import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'first_page.dart'; // Import your screens

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Live Stream & Record',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initial route setup
      home: LiveStreamScreen(),
      debugShowCheckedModeBanner: false, // To hide the debug banner
    );
  }
}




import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_gellary/view/home.dart';
import 'package:my_gellary/view/login.dart';

class MyGellary extends StatelessWidget {
  const MyGellary({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQueryData = MediaQuery.of(context);
    // double screenHeight = mediaQueryData.size.height;
    // double screenWeight = mediaQueryData.size.width;

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

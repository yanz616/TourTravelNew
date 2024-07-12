import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourtravelnew/shared/theme/theme.dart';
// import 'package:tourtravelnew/views/auth/sign_in.dart';
import 'package:tourtravelnew/views/auth/sign_up.dart';
import 'package:tourtravelnew/views/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

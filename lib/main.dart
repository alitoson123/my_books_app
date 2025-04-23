import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_books/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:my_books/constants.dart';

void main() {
  runApp(const MyBooks());
}

class MyBooks extends StatelessWidget {
  const MyBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroudColor,
        brightness: Brightness.light,
      ),
      home: SplashView(),
    );
  }
}

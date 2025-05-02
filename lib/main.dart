import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_books/constants.dart';


void main() {
  runApp(const MyBooks());
}

class MyBooks extends StatelessWidget {
  const MyBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: KbackgroudColor,
        brightness: Brightness.light,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    );
  }
}



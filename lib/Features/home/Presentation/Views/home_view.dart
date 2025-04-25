import 'package:flutter/material.dart';
import 'package:my_books/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: KbackgroudColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Images.logo,
              width: 120,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_books/constants.dart';

PreferredSizeWidget myAppBar() {
  return AppBar(
    surfaceTintColor: Colors.transparent,
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
  );
}
